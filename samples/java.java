package com.trolltech.examples;

import java.util.Vector;

import com.trolltech.qt.core.*;
import com.trolltech.qt.gui.*;

@QtJambiExample(name = "Syntax Highlighter")
public class SyntaxHighlighter extends QMainWindow {

    private QTextEdit editor;

    public static void main(String args[]) {
        QApplication.initialize(args);

        SyntaxHighlighter syntaxHighlighter = new SyntaxHighlighter();
        syntaxHighlighter.show();

        QApplication.exec();
    }

    public SyntaxHighlighter() {
        setupFileMenu();
        setupHelpMenu();
        setupEditor();

        setCentralWidget(editor);
        resize(640, 480);
        setWindowTitle(tr("Syntax Highlighter"));
        setWindowIcon(new QIcon(
                      "classpath:com/trolltech/images/qt-logo.png"));
    }

    public void about() {
        QMessageBox.about(this, tr("About Syntax Highlighter"),
                tr("<p>The <b>Syntax Highlighter</b> example shows how "
                        + "to perform simple syntax highlighting by subclassing "
                        + "the QSyntaxHighlighter class and describing "
                        + "highlighting rules using regular expressions.</p>"));
    }

    public void newFile() {
        editor.clear();
    }

    public void openFile() {
        openFile("");
    }

    public void openFile(String fileName) {
        if (fileName.equals(""))
            fileName = QFileDialog
                    .getOpenFileName(this, tr("Open File"), "", new QFileDialog.Filter("Java Files (*.java)"));

        if (!fileName.equals("")) {
            QFile file = new QFile(fileName);
            if (file.open(new QFile.OpenMode(QFile.OpenModeFlag.ReadOnly, QFile.OpenModeFlag.Text)))
                editor.setPlainText(file.readAll().toString());
        }
    }

    private void setupEditor() {
        QFont font = new QFont();
        font.setFamily("Courier");
        font.setFixedPitch(true);
        font.setPointSize(10);

        editor = new QTextEdit();
        editor.setLineWrapMode(QTextEdit.LineWrapMode.NoWrap);
        editor.setFont(font);

        new Highlighter(editor.document());

        QFile file = new QFile(
               "classpath:com/trolltech/examples/SyntaxHighlighter.java");

        if (file.open(new QFile.OpenMode(QFile.OpenModeFlag.ReadOnly,
                                         QFile.OpenModeFlag.Text)))
            editor.setPlainText(file.readAll().toString());
    }

    private void setupFileMenu() {
        QMenu fileMenu = new QMenu(tr("&File"), this);
        menuBar().addMenu(fileMenu);

        QAction newAct = new QAction(tr("&New"), this);
        newAct.triggered.connect(this, "newFile()");
        fileMenu.addAction(newAct);

        QAction openAct = new QAction(tr("&Open..."), this);
        openAct.triggered.connect(this, "openFile()");
        fileMenu.addAction(openAct);

        QAction quitAct = new QAction(tr("E&xit"), this);
        quitAct.triggered.connect(this, "close()");
        fileMenu.addAction(quitAct);
    }

    private void setupHelpMenu() {
        QMenu helpMenu = new QMenu(tr("&Help"), this);
        menuBar().addMenu(helpMenu);

        QAction aboutAct = new QAction(tr("&About"), this);
        aboutAct.triggered.connect(this, "about()");
        helpMenu.addAction(aboutAct);

        QAction aboutQtJambiAct = new QAction(tr("About &Qt Jambi"), this);
        aboutQtJambiAct.triggered.connect(QApplication.instance(), "aboutQtJambi()");
        helpMenu.addSeparator();
        helpMenu.addAction(aboutQtJambiAct);

        QAction aboutQtAct = new QAction(tr("About Q&t"), this);
        aboutQtAct.triggered.connect(QApplication.instance(), "aboutQt()");
        helpMenu.addAction(aboutQtAct);
    }

    private class Highlighter extends QSyntaxHighlighter {

        public class HighlightingRule {
            public QRegExp pattern;
            public QTextCharFormat format;

            public HighlightingRule(QRegExp pattern, QTextCharFormat format) {
                this.pattern = pattern;
                this.format = format;
            }
        }

        Vector<HighlightingRule> highlightingRules = new Vector<HighlightingRule>();

        QRegExp commentStartExpression;
        QRegExp commentEndExpression;

        QTextCharFormat keywordFormat = new QTextCharFormat();
        QTextCharFormat classFormat = new QTextCharFormat();
        QTextCharFormat commentFormat = new QTextCharFormat();
        QTextCharFormat quotationFormat = new QTextCharFormat();
        QTextCharFormat functionFormat = new QTextCharFormat();

        public Highlighter(QTextDocument parent) {

            super(parent);

            HighlightingRule rule;
            QBrush brush;
            QRegExp pattern;

            brush = new QBrush(QColor.darkBlue,Qt.BrushStyle.SolidPattern);
            keywordFormat.setForeground(brush);
            keywordFormat.setFontWeight(QFont.Weight.Bold.value());

            // All the java keywords
            String[] keywords = { "abstract", "continue", "for", "new",
                                  "switch", "assert", "default", "goto",
                                  "package", "synchronized", "boolean",
                                  "do", "if", "private", "this", "break",
                                  "double", "implements", "protected",
                                  "throw", "byte", "else", "import",
                                  "public", "throws", "case", "enum",
                                  "instanceof", "return", "transient",
                                  "catch", "extends", "int", "short",
                                  "try", "char", "final", "interface",
                                  "static", "void", "class", "finally",
                                  "long", "strictfp", "volatile", "const",
                                  "float", "native", "super", "while" };

            for (String keyword : keywords) {
                pattern = new QRegExp("\\b" + keyword + "\\b");
                rule = new HighlightingRule(pattern, keywordFormat);
                highlightingRules.add(rule);
            }

            // Any word starting with Q
            brush = new QBrush(QColor.darkMagenta);
            pattern = new QRegExp("\\bQ[A-Za-z]+\\b");
            classFormat.setForeground(brush);
            classFormat.setFontWeight(QFont.Weight.Bold.value());
            rule = new HighlightingRule(pattern, classFormat);
            highlightingRules.add(rule);

            // Comment starting with //
            brush = new QBrush(QColor.gray, Qt.BrushStyle.SolidPattern);
            pattern = new QRegExp("//[^\n]*");
            commentFormat.setForeground(brush);
            rule = new HighlightingRule(pattern, commentFormat);
            highlightingRules.add(rule);

            // String
            brush = new QBrush(QColor.blue, Qt.BrushStyle.SolidPattern);
            pattern = new QRegExp("\".*\"");
            pattern.setMinimal(true);
            quotationFormat.setForeground(brush);
            rule = new HighlightingRule(pattern, quotationFormat);
            highlightingRules.add(rule);

            // Function
            brush = new QBrush(QColor.darkGreen, Qt.BrushStyle.SolidPattern);
            pattern = new QRegExp("\\b[A-Za-z0-9_]+(?=\\()");
            functionFormat.setForeground(brush);
            functionFormat.setFontItalic(true);
            rule = new HighlightingRule(pattern, functionFormat);
            highlightingRules.add(rule);

            // Block comment
            commentStartExpression = new QRegExp("/\\*");
            commentEndExpression = new QRegExp("\\*/");
        }

        @Override
        public void highlightBlock(String text) {

            for (HighlightingRule rule : highlightingRules) {
                QRegExp expression = rule.pattern;
                int index = expression.indexIn(text);
                while (index >= 0) {
                    int length = expression.matchedLength();
                    setFormat(index, length, rule.format);
                    index = expression.indexIn(text, index + length);
                }
            }
            setCurrentBlockState(0);

            int startIndex = 0;
            if (previousBlockState() != 1)
                startIndex = commentStartExpression.indexIn(text);

            while (startIndex >= 0) {
                int endIndex = commentEndExpression.indexIn(text, startIndex);
                int commentLength;
                if (endIndex == -1) {
                    setCurrentBlockState(1);
                    commentLength = text.length() - startIndex;
                } else {
                    commentLength = endIndex - startIndex + commentEndExpression.matchedLength();
                }
                setFormat(startIndex, commentLength, commentFormat);
                startIndex = commentStartExpression.indexIn(text, startIndex + commentLength);
            }
        }
    }
}
