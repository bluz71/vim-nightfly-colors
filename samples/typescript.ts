import { Adapter } from "./adapter"
import { BrowserAdapter } from "./browser_adapter"
import { History } from "./history"
import { Location, Locatable } from "./location"
import { Action, Position, isAction } from "./types"
import { closest, defer, dispatch, uuid } from "./util"
import { RenderOptions, View } from "./view"
import { Visit } from "./visit"

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})

export class Controller {
  static supported = !!(
    window.history.pushState &&
    window.requestAnimationFrame &&
    window.addEventListener
  )

  readonly adapter: Adapter = new BrowserAdapter(this)
  readonly history = new History(this)
  readonly restorationData: RestorationDataMap = {}
  readonly scrollManager = new ScrollManager(this)
  readonly view = new View(this)

  cache = new SnapshotCache(10)
  currentVisit?: Visit
  enabled = true
  lastRenderedLocation?: Location
  location!: Location
  progressBarDelay = 500
  restorationIdentifier!: string
  started = false

  start() {
    if (Controller.supported && !this.started) {
      addEventListener("click", this.clickCaptured, true)
      addEventListener("DOMContentLoaded", this.pageLoaded, false)
      this.scrollManager.start()
      this.startHistory()
      this.started = true
      this.enabled = true
    }
  }

  disable() {
    this.enabled = false
  }

  stop() {
    if (this.started) {
      removeEventListener("click", this.clickCaptured, true)
      removeEventListener("DOMContentLoaded", this.pageLoaded, false)
      this.scrollManager.stop()
      this.stopHistory()
      this.started = false
    }
  }

  clearCache() {
    this.cache = new SnapshotCache(10)
  }

  visit(location: Locatable, options: Partial<VisitOptions> = {}) {
    location = Location.wrap(location)
    if (this.applicationAllowsVisitingLocation(location)) {
      if (this.locationIsVisitable(location)) {
        const action = options.action || "advance"
        this.adapter.visitProposedToLocationWithAction(location, action)
      } else {
        window.location.href = location.toString()
      }
    }
  }

  startVisitToLocationWithAction(location: Locatable, action: Action, restorationIdentifier: string) {
    if (Controller.supported) {
      const restorationData = this.getRestorationDataForIdentifier(restorationIdentifier)
      this.startVisit(Location.wrap(location), action, { restorationData })
    } else {
      window.location.href = location.toString()
    }
  }

  setProgressBarDelay(delay: number) {
    this.progressBarDelay = delay
  }


  scrollToAnchor(anchor: string) {
    const element = this.view.getElementForAnchor(anchor)
    if (element) {
      this.scrollToElement(element)
    } else {
      this.scrollToPosition({ x: 0, y: 0 })
    }
  }

  scrollToElement(element: Element) {
    this.scrollManager.scrollToElement(element)
  }

  scrollToPosition(position: Position) {
    this.scrollManager.scrollToPosition(position)
  }

  pageLoaded = () => {
    this.lastRenderedLocation = this.location
    this.notifyApplicationAfterPageLoad()
  }

  clickCaptured = () => {
    removeEventListener("click", this.clickBubbled, false)
    addEventListener("click", this.clickBubbled, false)
  }

  clickBubbled = (event: MouseEvent) => {
    if (this.enabled && this.clickEventIsSignificant(event)) {
      const link = this.getVisitableLinkForTarget(event.target)
      if (link) {
        const location = this.getVisitableLocationForLink(link)
        if (location && this.applicationAllowsFollowingLinkToLocation(link, location)) {
          event.preventDefault()
          const action = this.getActionForLink(link)
          this.visit(location, { action })
        }
      }
    }
  }

  getActionForLink(link: Element): Action {
    const action = link.getAttribute("data-turbolinks-action")
    return isAction(action) ? action : "advance"
  }

  elementIsVisitable(element: Element) {
    const container = closest(element, "[data-turbolinks]")
    if (container) {
      return container.getAttribute("data-turbolinks") != "false"
    } else {
      return true
    }
  }

  locationIsVisitable(location: Location) {
    return location.isPrefixedBy(this.view.getRootLocation()) && location.isHTML()
  }

  getCurrentRestorationData(): RestorationData {
    return this.getRestorationDataForIdentifier(this.restorationIdentifier)
  }

  getRestorationDataForIdentifier(identifier: string): RestorationData {
    if (!(identifier in this.restorationData)) {
      this.restorationData[identifier] = {}
    }
    return this.restorationData[identifier]
  }
}
