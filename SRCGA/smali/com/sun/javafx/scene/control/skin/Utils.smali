.class public Lcom/sun/javafx/scene/control/skin/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final DEFAULT_BOUNDS_TYPE:Ljavafx/scene/text/TextBoundsType;

.field static final DEFAULT_LINE_SPACING:D

.field static final DEFAULT_TEXT:Ljava/lang/String;

.field static final DEFAULT_WRAPPING_WIDTH:D

.field private static charIterator:Ljava/text/BreakIterator;

.field static final helper:Ljavafx/scene/text/Text;

.field static final layout:Lcom/sun/javafx/scene/text/TextLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const-class v0, Lcom/sun/javafx/scene/control/skin/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/Utils;->$assertionsDisabled:Z

    .line 72
    new-instance v0, Ljavafx/scene/text/Text;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/text/Text;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    invoke-virtual {v0}, Ljavafx/scene/text/Text;->getWrappingWidth()D

    move-result-wide v0

    sput-wide v0, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_WRAPPING_WIDTH:D

    .line 74
    sget-object v0, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    invoke-virtual {v0}, Ljavafx/scene/text/Text;->getLineSpacing()D

    move-result-wide v0

    sput-wide v0, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_LINE_SPACING:D

    .line 75
    sget-object v0, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    invoke-virtual {v0}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_TEXT:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    invoke-virtual {v0}, Ljavafx/scene/text/Text;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_BOUNDS_TYPE:Ljavafx/scene/text/TextBoundsType;

    .line 87
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->getTextLayoutFactory()Lcom/sun/javafx/scene/text/TextLayoutFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/javafx/scene/text/TextLayoutFactory;->createLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    .line 751
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/scene/control/skin/Utils;->charIterator:Ljava/text/BreakIterator;

    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/Utils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addMnemonics(Ljavafx/scene/control/ContextMenu;Ljavafx/scene/Scene;)V
    .locals 5

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "popup":Ljavafx/scene/control/ContextMenu;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/Utils;->addMnemonics(Ljavafx/scene/control/ContextMenu;Ljavafx/scene/Scene;Z)V

    .line 637
    return-void
.end method

.method static addMnemonics(Ljavafx/scene/control/ContextMenu;Ljavafx/scene/Scene;Z)V
    .locals 15

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "popup":Ljavafx/scene/control/ContextMenu;
    move-object/from16 v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move/from16 v2, p2

    .local v2, "initialState":Z
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v10

    if-nez v10, :cond_1

    .line 643
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v3, v10

    .line 646
    .local v3, "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 647
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v10

    move v11, v5

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/MenuItem;

    move-object v4, v10

    .line 651
    .local v4, "menuitem":Ljavafx/scene/control/MenuItem;
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/MenuItem;->isMnemonicParsing()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 653
    new-instance v10, Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/control/MenuItem;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sun/javafx/scene/control/behavior/TextBinding;-><init>(Ljava/lang/String;)V

    move-object v6, v10

    .line 654
    .local v6, "bindings":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicIndex()I

    move-result v10

    move v7, v10

    .line 655
    .local v7, "mnemonicIndex":I
    move v10, v7

    if-ltz v10, :cond_0

    .line 656
    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicKeyCombination()Ljavafx/scene/input/KeyCombination;

    move-result-object v10

    move-object v8, v10

    .line 657
    .local v8, "mnemonicKeyCombo":Ljavafx/scene/input/KeyCombination;
    new-instance v10, Ljavafx/scene/input/Mnemonic;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    move v13, v5

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getLabelAt(I)Ljavafx/scene/control/Label;

    move-result-object v12

    move-object v13, v8

    invoke-direct {v11, v12, v13}, Ljavafx/scene/input/Mnemonic;-><init>(Ljavafx/scene/Node;Ljavafx/scene/input/KeyCombination;)V

    move-object v9, v10

    .line 658
    .local v9, "myMnemonic":Ljavafx/scene/input/Mnemonic;
    move-object v10, v1

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljavafx/scene/Scene;->addMnemonic(Ljavafx/scene/input/Mnemonic;)V

    .line 659
    move-object v10, v3

    move v11, v5

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getLabelAt(I)Ljavafx/scene/control/Label;

    move-result-object v10

    move v11, v2

    invoke-virtual {v10, v11}, Ljavafx/scene/control/Label;->impl_setShowMnemonics(Z)V

    .line 646
    .end local v6    # "bindings":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    .end local v7    # "mnemonicIndex":I
    .end local v8    # "mnemonicKeyCombo":Ljavafx/scene/input/KeyCombination;
    .end local v9    # "myMnemonic":Ljavafx/scene/input/Mnemonic;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 664
    .end local v3    # "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    .end local v4    # "menuitem":Ljavafx/scene/control/MenuItem;
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method public static boundedSize(DDD)D
    .locals 12

    .prologue
    .line 632
    move-wide v0, p0

    .local v0, "value":D
    move-wide v2, p2

    .local v2, "min":D
    move-wide/from16 v4, p4

    .local v4, "max":D
    move-wide v6, v0

    move-wide v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v8, v2

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "value":D
    return-wide v0
.end method

.method static computeClippedText(Ljavafx/scene/text/Font;Ljava/lang/String;DLjavafx/scene/control/OverrunStyle;Ljava/lang/String;)Ljava/lang/String;
    .locals 38

    .prologue
    .line 158
    move-object/from16 v3, p0

    .local v3, "font":Ljavafx/scene/text/Font;
    move-object/from16 v4, p1

    .local v4, "text":Ljava/lang/String;
    move-wide/from16 v5, p2

    .local v5, "width":D
    move-object/from16 v7, p4

    .local v7, "type":Ljavafx/scene/control/OverrunStyle;
    move-object/from16 v8, p5

    .local v8, "ellipsisString":Ljava/lang/String;
    move-object/from16 v30, v3

    if-nez v30, :cond_0

    .line 159
    new-instance v30, Ljava/lang/IllegalArgumentException;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    const-string v32, "Must specify a font"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 161
    :cond_0
    move-object/from16 v30, v7

    if-eqz v30, :cond_1

    move-object/from16 v30, v7

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->CLIP:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_3

    :cond_1
    sget-object v30, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    :goto_0
    move-object/from16 v9, v30

    .line 162
    .local v9, "style":Ljavafx/scene/control/OverrunStyle;
    move-object/from16 v30, v7

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->CLIP:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_4

    const-string v30, ""

    :goto_1
    move-object/from16 v10, v30

    .line 164
    .local v10, "ellipsis":Ljava/lang/String;
    move-object/from16 v30, v4

    if-eqz v30, :cond_2

    const-string v30, ""

    move-object/from16 v31, v4

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 165
    :cond_2
    move-object/from16 v30, v4

    move-object/from16 v3, v30

    .line 352
    .end local v3    # "font":Ljavafx/scene/text/Font;
    :goto_2
    return-object v3

    .line 161
    .end local v9    # "style":Ljavafx/scene/control/OverrunStyle;
    .end local v10    # "ellipsis":Ljava/lang/String;
    .restart local v3    # "font":Ljavafx/scene/text/Font;
    :cond_3
    move-object/from16 v30, v7

    goto :goto_0

    .line 162
    .restart local v9    # "style":Ljavafx/scene/control/OverrunStyle;
    :cond_4
    move-object/from16 v30, v8

    goto :goto_1

    .line 173
    .restart local v10    # "ellipsis":Ljava/lang/String;
    :cond_5
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    const-wide/16 v32, 0x0

    invoke-static/range {v30 .. v33}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v30

    move-wide/from16 v11, v30

    .line 174
    .local v11, "stringWidth":D
    move-wide/from16 v30, v11

    move-wide/from16 v32, v5

    sub-double v30, v30, v32

    const-wide v32, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpg-double v30, v30, v32

    if-gez v30, :cond_6

    .line 175
    move-object/from16 v30, v4

    move-object/from16 v3, v30

    goto :goto_2

    .line 178
    :cond_6
    move-object/from16 v30, v3

    move-object/from16 v31, v10

    const-wide/16 v32, 0x0

    invoke-static/range {v30 .. v33}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v30

    move-wide/from16 v13, v30

    .line 181
    .local v13, "ellipsisWidth":D
    move-wide/from16 v30, v5

    move-wide/from16 v32, v13

    sub-double v30, v30, v32

    move-wide/from16 v15, v30

    .line 183
    .local v15, "availableWidth":D
    move-wide/from16 v30, v5

    move-wide/from16 v32, v13

    cmpg-double v30, v30, v32

    if-gez v30, :cond_7

    .line 185
    const-string v30, ""

    move-object/from16 v3, v30

    goto :goto_2

    .line 198
    :cond_7
    const/16 v30, 0x0

    move/from16 v17, v30

    .line 204
    .local v17, "complexLayout":Z
    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_8

    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_8

    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->LEADING_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_8

    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->LEADING_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_24

    .line 209
    :cond_8
    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_9

    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->LEADING_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_b

    :cond_9
    const/16 v30, 0x1

    :goto_3
    move/from16 v18, v30

    .line 220
    .local v18, "wordTrim":Z
    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_d

    new-instance v30, Ljava/text/Bidi;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    move-object/from16 v32, v4

    const/16 v33, 0x0

    invoke-direct/range {v31 .. v33}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {v30 .. v30}, Ljava/text/Bidi;->isMixed()Z

    move-result v30

    if-nez v30, :cond_d

    .line 221
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-wide/from16 v32, v5

    move-wide/from16 v34, v13

    sub-double v32, v32, v34

    invoke-static/range {v30 .. v33}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTruncationIndex(Ljavafx/scene/text/Font;Ljava/lang/String;D)I

    move-result v30

    move/from16 v20, v30

    .line 222
    .local v20, "hit":I
    move/from16 v30, v20

    if-ltz v30, :cond_a

    move/from16 v30, v20

    move-object/from16 v31, v4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_c

    .line 223
    :cond_a
    move-object/from16 v30, v4

    move-object/from16 v3, v30

    goto/16 :goto_2

    .line 209
    .end local v18    # "wordTrim":Z
    .end local v20    # "hit":I
    :cond_b
    const/16 v30, 0x0

    goto :goto_3

    .line 225
    .restart local v18    # "wordTrim":Z
    .restart local v20    # "hit":I
    :cond_c
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v4

    const/16 v32, 0x0

    move/from16 v33, v20

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v10

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v3, v30

    goto/16 :goto_2

    .line 233
    .end local v20    # "hit":I
    :cond_d
    const-wide/16 v30, 0x0

    move-wide/from16 v20, v30

    .line 234
    .local v20, "total":D
    const/16 v30, -0x1

    move/from16 v22, v30

    .line 237
    .local v22, "whitespaceIndex":I
    const/16 v30, 0x0

    move/from16 v23, v30

    .line 238
    .local v23, "index":I
    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->LEADING_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_e

    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->LEADING_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_12

    :cond_e
    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    :goto_4
    move/from16 v24, v30

    .line 239
    .local v24, "start":I
    move/from16 v30, v24

    if-nez v30, :cond_13

    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    :goto_5
    move/from16 v25, v30

    .line 240
    .local v25, "end":I
    move/from16 v30, v24

    if-nez v30, :cond_14

    const/16 v30, 0x1

    :goto_6
    move/from16 v26, v30

    .line 241
    .local v26, "stepValue":I
    move/from16 v30, v24

    if-nez v30, :cond_16

    move/from16 v30, v24

    move/from16 v31, v25

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_15

    const/16 v30, 0x1

    :goto_7
    move/from16 v27, v30

    .line 242
    .local v27, "done":Z
    move/from16 v30, v24

    move/from16 v28, v30

    .local v28, "i":I
    :goto_8
    move/from16 v30, v27

    if-nez v30, :cond_10

    .line 243
    move/from16 v30, v28

    move/from16 v23, v30

    .line 244
    move-object/from16 v30, v4

    move/from16 v31, v23

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move/from16 v29, v30

    .line 245
    .local v29, "c":C
    move-object/from16 v30, v3

    move/from16 v31, v24

    if-nez v31, :cond_18

    move-object/from16 v31, v4

    const/16 v32, 0x0

    move/from16 v33, v28

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    .line 246
    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 247
    :goto_9
    const-wide/16 v32, 0x0

    .line 245
    invoke-static/range {v30 .. v33}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v30

    move-wide/from16 v20, v30

    .line 249
    move/from16 v30, v29

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 250
    move/from16 v30, v23

    move/from16 v22, v30

    .line 252
    :cond_f
    move-wide/from16 v30, v20

    move-wide/from16 v32, v15

    cmpl-double v30, v30, v32

    if-lez v30, :cond_19

    .line 253
    .line 257
    .end local v29    # "c":C
    :cond_10
    move/from16 v30, v18

    if-eqz v30, :cond_11

    move/from16 v30, v22

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1d

    :cond_11
    const/16 v30, 0x1

    :goto_a
    move/from16 v28, v30

    .line 258
    .local v28, "fullTrim":Z
    move/from16 v30, v24

    if-nez v30, :cond_1f

    move-object/from16 v30, v4

    const/16 v31, 0x0

    move/from16 v32, v28

    if-eqz v32, :cond_1e

    move/from16 v32, v23

    .line 259
    :goto_b
    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    .line 260
    :goto_c
    move-object/from16 v19, v30

    .line 261
    .local v19, "substring":Ljava/lang/String;
    sget-boolean v30, Lcom/sun/javafx/scene/control/skin/Utils;->$assertionsDisabled:Z

    if-nez v30, :cond_21

    move-object/from16 v30, v4

    move-object/from16 v31, v19

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_21

    new-instance v30, Ljava/lang/AssertionError;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/AssertionError;-><init>()V

    throw v30

    .line 238
    .end local v19    # "substring":Ljava/lang/String;
    .end local v24    # "start":I
    .end local v25    # "end":I
    .end local v26    # "stepValue":I
    .end local v27    # "done":Z
    .end local v28    # "fullTrim":Z
    :cond_12
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 239
    .restart local v24    # "start":I
    :cond_13
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 240
    .restart local v25    # "end":I
    :cond_14
    const/16 v30, -0x1

    goto/16 :goto_6

    .line 241
    .restart local v26    # "stepValue":I
    :cond_15
    const/16 v30, 0x0

    goto/16 :goto_7

    :cond_16
    move/from16 v30, v24

    move/from16 v31, v25

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    const/16 v30, 0x1

    goto/16 :goto_7

    :cond_17
    const/16 v30, 0x0

    goto/16 :goto_7

    .line 246
    .restart local v27    # "done":Z
    .local v28, "i":I
    .restart local v29    # "c":C
    :cond_18
    move-object/from16 v31, v4

    move/from16 v32, v28

    move/from16 v33, v24

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    .line 247
    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_9

    .line 255
    :cond_19
    move/from16 v30, v24

    if-nez v30, :cond_1b

    move/from16 v30, v28

    move/from16 v31, v25

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_1a

    const/16 v30, 0x1

    :goto_d
    move/from16 v27, v30

    .line 242
    move/from16 v30, v28

    move/from16 v31, v26

    add-int v30, v30, v31

    move/from16 v28, v30

    goto/16 :goto_8

    .line 255
    :cond_1a
    const/16 v30, 0x0

    goto :goto_d

    :cond_1b
    move/from16 v30, v28

    move/from16 v31, v25

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_1c

    const/16 v30, 0x1

    goto :goto_d

    :cond_1c
    const/16 v30, 0x0

    goto :goto_d

    .line 257
    .end local v29    # "c":C
    :cond_1d
    const/16 v30, 0x0

    goto/16 :goto_a

    .line 258
    .local v28, "fullTrim":Z
    :cond_1e
    move/from16 v32, v22

    goto/16 :goto_b

    .line 259
    :cond_1f
    move-object/from16 v30, v4

    move/from16 v31, v28

    if-eqz v31, :cond_20

    move/from16 v31, v23

    :goto_e
    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    .line 260
    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_c

    .line 259
    :cond_20
    move/from16 v31, v22

    goto :goto_e

    .line 263
    .restart local v19    # "substring":Ljava/lang/String;
    :cond_21
    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_22

    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_23

    .line 264
    :cond_22
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v19

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v10

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v3, v30

    goto/16 :goto_2

    .line 267
    :cond_23
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v10

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v19

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v3, v30

    goto/16 :goto_2

    .line 271
    .end local v18    # "wordTrim":Z
    .end local v19    # "substring":Ljava/lang/String;
    .end local v20    # "total":D
    .end local v22    # "whitespaceIndex":I
    .end local v23    # "index":I
    .end local v24    # "start":I
    .end local v25    # "end":I
    .end local v26    # "stepValue":I
    .end local v27    # "done":Z
    .end local v28    # "fullTrim":Z
    :cond_24
    const/16 v30, 0x0

    move/from16 v18, v30

    .line 272
    .local v18, "leadingIndex":I
    const/16 v30, 0x0

    move/from16 v19, v30

    .line 273
    .local v19, "trailingIndex":I
    const/16 v30, -0x1

    move/from16 v20, v30

    .line 274
    .local v20, "leadingWhitespace":I
    const/16 v30, -0x1

    move/from16 v21, v30

    .line 305
    .local v21, "trailingWhitespace":I
    const/16 v30, -0x1

    move/from16 v18, v30

    .line 306
    const/16 v30, -0x1

    move/from16 v19, v30

    .line 307
    const-wide/16 v30, 0x0

    move-wide/from16 v22, v30

    .line 308
    .local v22, "total":D
    const/16 v30, 0x0

    move/from16 v24, v30

    .local v24, "i":I
    :goto_f
    move/from16 v30, v24

    move-object/from16 v31, v4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_25

    .line 309
    move-object/from16 v30, v4

    move/from16 v31, v24

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move/from16 v25, v30

    .line 311
    .local v25, "c":C
    move-wide/from16 v30, v22

    move-object/from16 v32, v3

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v36, v33

    move-object/from16 v33, v36

    move-object/from16 v34, v36

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move/from16 v34, v25

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const-wide/16 v34, 0x0

    invoke-static/range {v32 .. v35}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v32

    add-double v30, v30, v32

    move-wide/from16 v22, v30

    .line 312
    move-wide/from16 v30, v22

    move-wide/from16 v32, v15

    cmpl-double v30, v30, v32

    if-lez v30, :cond_26

    .line 313
    .line 332
    .end local v25    # "c":C
    :cond_25
    :goto_10
    move/from16 v30, v18

    if-gez v30, :cond_2a

    .line 333
    move-object/from16 v30, v10

    move-object/from16 v3, v30

    goto/16 :goto_2

    .line 315
    .restart local v25    # "c":C
    :cond_26
    move/from16 v30, v24

    move/from16 v18, v30

    .line 316
    move/from16 v30, v25

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v30

    if-eqz v30, :cond_27

    .line 317
    move/from16 v30, v18

    move/from16 v20, v30

    .line 319
    :cond_27
    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v31, v24

    sub-int v30, v30, v31

    move/from16 v26, v30

    .line 320
    .local v26, "index":I
    move-object/from16 v30, v4

    move/from16 v31, v26

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    move/from16 v25, v30

    .line 322
    move-wide/from16 v30, v22

    move-object/from16 v32, v3

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v36, v33

    move-object/from16 v33, v36

    move-object/from16 v34, v36

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move/from16 v34, v25

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const-wide/16 v34, 0x0

    invoke-static/range {v32 .. v35}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v32

    add-double v30, v30, v32

    move-wide/from16 v22, v30

    .line 323
    move-wide/from16 v30, v22

    move-wide/from16 v32, v15

    cmpl-double v30, v30, v32

    if-lez v30, :cond_28

    .line 324
    goto :goto_10

    .line 326
    :cond_28
    move/from16 v30, v26

    move/from16 v19, v30

    .line 327
    move/from16 v30, v25

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v30

    if-eqz v30, :cond_29

    .line 328
    move/from16 v30, v19

    move/from16 v21, v30

    .line 308
    :cond_29
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_f

    .line 335
    .end local v25    # "c":C
    .end local v26    # "index":I
    :cond_2a
    move-object/from16 v30, v9

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->CENTER_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2c

    .line 336
    move/from16 v30, v19

    if-gez v30, :cond_2b

    .line 337
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v4

    const/16 v32, 0x0

    move/from16 v33, v18

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v10

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v3, v30

    goto/16 :goto_2

    .line 339
    :cond_2b
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v4

    const/16 v32, 0x0

    move/from16 v33, v18

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v10

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v4

    move/from16 v32, v19

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v3, v30

    goto/16 :goto_2

    .line 341
    :cond_2c
    move-object/from16 v30, v4

    move/from16 v31, v18

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    .line 342
    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v30

    move/from16 v22, v30

    .line 343
    .local v22, "leadingIndexIsLastLetterInWord":Z
    move/from16 v30, v20

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2d

    move/from16 v30, v22

    if-eqz v30, :cond_2e

    :cond_2d
    move/from16 v30, v18

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    :goto_11
    move/from16 v23, v30

    .line 344
    .restart local v23    # "index":I
    move-object/from16 v30, v4

    const/16 v31, 0x0

    move/from16 v32, v23

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v24, v30

    .line 345
    .local v24, "leading":Ljava/lang/String;
    move/from16 v30, v19

    if-gez v30, :cond_2f

    .line 346
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v24

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v10

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v3, v30

    goto/16 :goto_2

    .line 343
    .end local v23    # "index":I
    .local v24, "i":I
    :cond_2e
    move/from16 v30, v20

    goto :goto_11

    .line 348
    .restart local v23    # "index":I
    .local v24, "leading":Ljava/lang/String;
    :cond_2f
    move-object/from16 v30, v4

    move/from16 v31, v19

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    .line 349
    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v30

    move/from16 v25, v30

    .line 350
    .local v25, "trailingIndexIsFirstLetterInWord":Z
    move/from16 v30, v21

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_30

    move/from16 v30, v25

    if-eqz v30, :cond_31

    :cond_30
    move/from16 v30, v19

    :goto_12
    move/from16 v23, v30

    .line 351
    move-object/from16 v30, v4

    move/from16 v31, v23

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v26, v30

    .line 352
    .local v26, "trailing":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v36, v30

    move-object/from16 v30, v36

    move-object/from16 v31, v36

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v24

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v10

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v26

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v3, v30

    goto/16 :goto_2

    .line 350
    .end local v26    # "trailing":Ljava/lang/String;
    :cond_31
    move/from16 v30, v21

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    goto :goto_12
.end method

.method static computeClippedWrappedText(Ljavafx/scene/text/Font;Ljava/lang/String;DDLjavafx/scene/control/OverrunStyle;Ljava/lang/String;Ljavafx/scene/text/TextBoundsType;)Ljava/lang/String;
    .locals 40

    .prologue
    .line 360
    move-object/from16 v2, p0

    .local v2, "font":Ljavafx/scene/text/Font;
    move-object/from16 v3, p1

    .local v3, "text":Ljava/lang/String;
    move-wide/from16 v4, p2

    .local v4, "width":D
    move-wide/from16 v6, p4

    .local v6, "height":D
    move-object/from16 v8, p6

    .local v8, "truncationStyle":Ljavafx/scene/control/OverrunStyle;
    move-object/from16 v9, p7

    .local v9, "ellipsisString":Ljava/lang/String;
    move-object/from16 v10, p8

    .local v10, "boundsType":Ljavafx/scene/text/TextBoundsType;
    move-object/from16 v30, v2

    if-nez v30, :cond_0

    .line 361
    new-instance v30, Ljava/lang/IllegalArgumentException;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-string v32, "Must specify a font"

    invoke-direct/range {v31 .. v32}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 364
    :cond_0
    move-object/from16 v30, v8

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->CLIP:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2

    const-string v30, ""

    :goto_0
    move-object/from16 v11, v30

    .line 365
    .local v11, "ellipsis":Ljava/lang/String;
    move-object/from16 v30, v11

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v12, v30

    .line 367
    .local v12, "eLen":I
    move-object/from16 v30, v2

    move-object/from16 v31, v11

    const-wide/16 v32, 0x0

    invoke-static/range {v30 .. v33}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v30

    move-wide/from16 v13, v30

    .line 368
    .local v13, "eWidth":D
    move-object/from16 v30, v2

    move-object/from16 v31, v11

    const-wide/16 v32, 0x0

    move-object/from16 v34, v10

    invoke-static/range {v30 .. v34}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextHeight(Ljavafx/scene/text/Font;Ljava/lang/String;DLjavafx/scene/text/TextBoundsType;)D

    move-result-wide v30

    move-wide/from16 v15, v30

    .line 370
    .local v15, "eHeight":D
    move-wide/from16 v30, v4

    move-wide/from16 v32, v13

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_1

    move-wide/from16 v30, v6

    move-wide/from16 v32, v15

    cmpg-double v30, v30, v32

    if-gez v30, :cond_3

    .line 372
    :cond_1
    move-object/from16 v30, v3

    move-object/from16 v2, v30

    .line 519
    .end local v2    # "font":Ljavafx/scene/text/Font;
    :goto_1
    return-object v2

    .line 364
    .end local v11    # "ellipsis":Ljava/lang/String;
    .end local v12    # "eLen":I
    .end local v13    # "eWidth":D
    .end local v15    # "eHeight":D
    .restart local v2    # "font":Ljavafx/scene/text/Font;
    :cond_2
    move-object/from16 v30, v9

    goto :goto_0

    .line 375
    .restart local v11    # "ellipsis":Ljava/lang/String;
    .restart local v12    # "eLen":I
    .restart local v13    # "eWidth":D
    .restart local v15    # "eHeight":D
    :cond_3
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object/from16 v31, v3

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 376
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object/from16 v31, v2

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->setFont(Ljavafx/scene/text/Font;)V

    .line 377
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-wide/from16 v31, v4

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/text/Text;->setWrappingWidth(D)V

    .line 378
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object/from16 v31, v10

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->setBoundsType(Ljavafx/scene/text/TextBoundsType;)V

    .line 379
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    const-wide/16 v31, 0x0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/text/Text;->setLineSpacing(D)V

    .line 381
    move-object/from16 v30, v8

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->LEADING_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_4

    move-object/from16 v30, v8

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->LEADING_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_8

    :cond_4
    const/16 v30, 0x1

    :goto_2
    move/from16 v17, v30

    .line 383
    .local v17, "leading":Z
    move-object/from16 v30, v8

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->CENTER_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_5

    move-object/from16 v30, v8

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->CENTER_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_9

    :cond_5
    const/16 v30, 0x1

    :goto_3
    move/from16 v18, v30

    .line 385
    .local v18, "center":Z
    move/from16 v30, v17

    if-nez v30, :cond_a

    move/from16 v30, v18

    if-nez v30, :cond_a

    const/16 v30, 0x1

    :goto_4
    move/from16 v19, v30

    .line 386
    .local v19, "trailing":Z
    move-object/from16 v30, v8

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_6

    move-object/from16 v30, v8

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->LEADING_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_6

    move-object/from16 v30, v8

    sget-object v31, Ljavafx/scene/control/OverrunStyle;->CENTER_WORD_ELLIPSIS:Ljavafx/scene/control/OverrunStyle;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_b

    :cond_6
    const/16 v30, 0x1

    :goto_5
    move/from16 v20, v30

    .line 390
    .local v20, "wordTrim":Z
    move-object/from16 v30, v3

    move-object/from16 v21, v30

    .line 391
    .local v21, "result":Ljava/lang/String;
    move-object/from16 v30, v21

    if-eqz v30, :cond_c

    move-object/from16 v30, v21

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    :goto_6
    move/from16 v22, v30

    .line 392
    .local v22, "len":I
    const/16 v30, -0x1

    move/from16 v23, v30

    .line 394
    .local v23, "centerLen":I
    const/16 v30, 0x0

    move-object/from16 v24, v30

    .line 395
    .local v24, "centerPoint":Ljavafx/geometry/Point2D;
    move/from16 v30, v18

    if-eqz v30, :cond_7

    .line 397
    new-instance v30, Ljavafx/geometry/Point2D;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    move-wide/from16 v32, v4

    move-wide/from16 v34, v13

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    move-wide/from16 v34, v6

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    div-double v34, v34, v36

    sget-object v36, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/text/Text;->getBaselineOffset()D

    move-result-wide v36

    sub-double v34, v34, v36

    invoke-direct/range {v31 .. v35}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v24, v30

    .line 402
    :cond_7
    new-instance v30, Ljavafx/geometry/Point2D;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    const-wide/16 v32, 0x0

    move-wide/from16 v34, v6

    sget-object v36, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/text/Text;->getBaselineOffset()D

    move-result-wide v36

    sub-double v34, v34, v36

    invoke-direct/range {v31 .. v35}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v25, v30

    .line 404
    .local v25, "endPoint":Ljavafx/geometry/Point2D;
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object/from16 v31, v25

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v30

    move/from16 v26, v30

    .line 405
    .local v26, "hit":I
    move/from16 v30, v26

    move/from16 v31, v22

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_d

    .line 406
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    sget-object v31, Ljavafx/scene/text/TextBoundsType;->LOGICAL:Ljavafx/scene/text/TextBoundsType;

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->setBoundsType(Ljavafx/scene/text/TextBoundsType;)V

    .line 407
    move-object/from16 v30, v3

    move-object/from16 v2, v30

    goto/16 :goto_1

    .line 381
    .end local v17    # "leading":Z
    .end local v18    # "center":Z
    .end local v19    # "trailing":Z
    .end local v20    # "wordTrim":Z
    .end local v21    # "result":Ljava/lang/String;
    .end local v22    # "len":I
    .end local v23    # "centerLen":I
    .end local v24    # "centerPoint":Ljavafx/geometry/Point2D;
    .end local v25    # "endPoint":Ljavafx/geometry/Point2D;
    .end local v26    # "hit":I
    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 383
    .restart local v17    # "leading":Z
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 385
    .restart local v18    # "center":Z
    :cond_a
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 386
    .restart local v19    # "trailing":Z
    :cond_b
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 391
    .restart local v20    # "wordTrim":Z
    .restart local v21    # "result":Ljava/lang/String;
    :cond_c
    const/16 v30, 0x0

    goto/16 :goto_6

    .line 409
    .restart local v22    # "len":I
    .restart local v23    # "centerLen":I
    .restart local v24    # "centerPoint":Ljavafx/geometry/Point2D;
    .restart local v25    # "endPoint":Ljavafx/geometry/Point2D;
    .restart local v26    # "hit":I
    :cond_d
    move/from16 v30, v18

    if-eqz v30, :cond_e

    .line 410
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object/from16 v31, v24

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v30

    move/from16 v26, v30

    .line 413
    :cond_e
    move/from16 v30, v26

    if-lez v30, :cond_17

    move/from16 v30, v26

    move/from16 v31, v22

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    .line 416
    move/from16 v30, v18

    if-nez v30, :cond_f

    move/from16 v30, v19

    if-eqz v30, :cond_12

    .line 417
    :cond_f
    move/from16 v30, v26

    move/from16 v27, v30

    .line 418
    .local v27, "ind":I
    move/from16 v30, v18

    if-eqz v30, :cond_11

    .line 420
    move/from16 v30, v20

    if-eqz v30, :cond_10

    .line 421
    move-object/from16 v30, v3

    move/from16 v31, v27

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/Utils;->lastBreakCharIndex(Ljava/lang/String;I)I

    move-result v30

    move/from16 v28, v30

    .line 422
    .local v28, "brInd":I
    move/from16 v30, v28

    if-ltz v30, :cond_18

    .line 423
    move/from16 v30, v28

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v27, v30

    .line 431
    .end local v28    # "brInd":I
    :cond_10
    :goto_7
    move/from16 v30, v27

    move/from16 v31, v12

    add-int v30, v30, v31

    move/from16 v23, v30

    .line 433
    :cond_11
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v21

    const/16 v32, 0x0

    move/from16 v33, v27

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v11

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v21, v30

    .line 436
    .end local v27    # "ind":I
    :cond_12
    move/from16 v30, v17

    if-nez v30, :cond_13

    move/from16 v30, v18

    if-eqz v30, :cond_15

    .line 447
    :cond_13
    const/16 v30, 0x0

    move/from16 v31, v22

    move/from16 v32, v26

    sub-int v31, v31, v32

    const/16 v32, 0xa

    add-int/lit8 v31, v31, -0xa

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->max(II)I

    move-result v30

    move/from16 v27, v30

    .line 448
    .restart local v27    # "ind":I
    move/from16 v30, v27

    if-lez v30, :cond_14

    move/from16 v30, v20

    if-eqz v30, :cond_14

    .line 449
    move-object/from16 v30, v3

    move/from16 v31, v27

    const/16 v32, 0x1

    add-int/lit8 v31, v31, 0x1

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/Utils;->lastBreakCharIndex(Ljava/lang/String;I)I

    move-result v30

    move/from16 v28, v30

    .line 450
    .restart local v28    # "brInd":I
    move/from16 v30, v28

    if-ltz v30, :cond_19

    .line 451
    move/from16 v30, v28

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v27, v30

    .line 459
    .end local v28    # "brInd":I
    :cond_14
    :goto_8
    move/from16 v30, v18

    if-eqz v30, :cond_1a

    .line 461
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v21

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v3

    move/from16 v32, v27

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v21, v30

    .line 470
    .end local v27    # "ind":I
    :cond_15
    :goto_9
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object/from16 v31, v21

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 471
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object/from16 v31, v25

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v30

    move/from16 v27, v30

    .line 472
    .local v27, "hit2":I
    move/from16 v30, v18

    if-eqz v30, :cond_1b

    move/from16 v30, v27

    move/from16 v31, v23

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_1b

    .line 475
    move/from16 v30, v27

    if-lez v30, :cond_16

    move-object/from16 v30, v21

    move/from16 v31, v27

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->charAt(I)C

    move-result v30

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_16

    .line 476
    add-int/lit8 v27, v27, -0x1

    .line 478
    :cond_16
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v3

    const/16 v32, 0x0

    move/from16 v33, v27

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v11

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v21, v30

    .line 515
    .end local v27    # "hit2":I
    :cond_17
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    sget-wide v31, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_WRAPPING_WIDTH:D

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/text/Text;->setWrappingWidth(D)V

    .line 516
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    sget-wide v31, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_LINE_SPACING:D

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/text/Text;->setLineSpacing(D)V

    .line 517
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    sget-object v31, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_TEXT:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 518
    sget-object v30, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    sget-object v31, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_BOUNDS_TYPE:Ljavafx/scene/text/TextBoundsType;

    invoke-virtual/range {v30 .. v31}, Ljavafx/scene/text/Text;->setBoundsType(Ljavafx/scene/text/TextBoundsType;)V

    .line 519
    move-object/from16 v30, v21

    move-object/from16 v2, v30

    goto/16 :goto_1

    .line 425
    .local v27, "ind":I
    .restart local v28    # "brInd":I
    :cond_18
    move-object/from16 v30, v3

    move/from16 v31, v27

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/Utils;->firstBreakCharIndex(Ljava/lang/String;I)I

    move-result v30

    move/from16 v28, v30

    .line 426
    move/from16 v30, v28

    if-ltz v30, :cond_10

    .line 427
    move/from16 v30, v28

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v27, v30

    goto/16 :goto_7

    .line 453
    :cond_19
    move-object/from16 v30, v3

    move/from16 v31, v27

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/Utils;->firstBreakCharIndex(Ljava/lang/String;I)I

    move-result v30

    move/from16 v28, v30

    .line 454
    move/from16 v30, v28

    if-ltz v30, :cond_14

    .line 455
    move/from16 v30, v28

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v27, v30

    goto/16 :goto_8

    .line 463
    .end local v28    # "brInd":I
    :cond_1a
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v11

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v3

    move/from16 v32, v27

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v21, v30

    goto/16 :goto_9

    .line 480
    .local v27, "hit2":I
    :cond_1b
    move/from16 v30, v27

    if-lez v30, :cond_17

    move/from16 v30, v27

    move-object/from16 v31, v21

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_17

    .line 481
    move/from16 v30, v17

    if-eqz v30, :cond_1d

    .line 482
    move/from16 v30, v12

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v28, v30

    .line 483
    .local v28, "ind":I
    move/from16 v30, v20

    if-eqz v30, :cond_1c

    .line 484
    move-object/from16 v30, v21

    move/from16 v31, v28

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/Utils;->firstBreakCharIndex(Ljava/lang/String;I)I

    move-result v30

    move/from16 v29, v30

    .line 485
    .local v29, "brInd":I
    move/from16 v30, v29

    if-ltz v30, :cond_1c

    .line 486
    move/from16 v30, v29

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v28, v30

    .line 489
    .end local v29    # "brInd":I
    :cond_1c
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v11

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v21

    move/from16 v32, v28

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v21, v30

    .line 512
    :goto_a
    goto/16 :goto_9

    .line 490
    .end local v28    # "ind":I
    :cond_1d
    move/from16 v30, v18

    if-eqz v30, :cond_1f

    .line 491
    move/from16 v30, v23

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v28, v30

    .line 492
    .restart local v28    # "ind":I
    move/from16 v30, v20

    if-eqz v30, :cond_1e

    .line 493
    move-object/from16 v30, v21

    move/from16 v31, v28

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/Utils;->firstBreakCharIndex(Ljava/lang/String;I)I

    move-result v30

    move/from16 v29, v30

    .line 494
    .restart local v29    # "brInd":I
    move/from16 v30, v29

    if-ltz v30, :cond_1e

    .line 495
    move/from16 v30, v29

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    move/from16 v28, v30

    .line 498
    .end local v29    # "brInd":I
    :cond_1e
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v21

    const/16 v32, 0x0

    move/from16 v33, v23

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v21

    move/from16 v32, v28

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v21, v30

    .line 499
    goto :goto_a

    .line 500
    .end local v28    # "ind":I
    :cond_1f
    move-object/from16 v30, v21

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v31, v12

    sub-int v30, v30, v31

    const/16 v31, 0x1

    add-int/lit8 v30, v30, -0x1

    move/from16 v28, v30

    .line 501
    .restart local v28    # "ind":I
    move/from16 v30, v20

    if-eqz v30, :cond_20

    .line 502
    move-object/from16 v30, v21

    move/from16 v31, v28

    invoke-static/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/Utils;->lastBreakCharIndex(Ljava/lang/String;I)I

    move-result v30

    move/from16 v29, v30

    .line 503
    .restart local v29    # "brInd":I
    move/from16 v30, v29

    if-ltz v30, :cond_20

    .line 504
    move/from16 v30, v29

    move/from16 v28, v30

    .line 507
    .end local v29    # "brInd":I
    :cond_20
    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v38, v30

    move-object/from16 v30, v38

    move-object/from16 v31, v38

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v21

    const/16 v32, 0x0

    move/from16 v33, v28

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v11

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v21, v30

    goto/16 :goto_a
.end method

.method static computeEndOfWord(Ljavafx/scene/text/Font;Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 599
    move-object v0, p0

    .local v0, "font":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move v2, p2

    .local v2, "index":I
    move-object v5, v1

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v2

    if-gez v5, :cond_1

    .line 600
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 623
    .end local v0    # "font":Ljavafx/scene/text/Font;
    :goto_0
    return v0

    .line 602
    .restart local v0    # "font":Ljavafx/scene/text/Font;
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v2

    if-gt v5, v6, :cond_2

    .line 603
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 607
    :cond_2
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 608
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 610
    :cond_3
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/Utils;->requiresComplexLayout(Ljavafx/scene/text/Font;Ljava/lang/String;)Z

    move-result v5

    move v3, v5

    .line 611
    .local v3, "complexLayout":Z
    move v5, v3

    if-eqz v5, :cond_4

    .line 613
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 617
    :cond_4
    move v5, v2

    move v4, v5

    .line 618
    .local v4, "i":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 619
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 620
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 623
    :cond_6
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method static computeStartOfWord(Ljavafx/scene/text/Font;Ljava/lang/String;I)I
    .locals 7

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "font":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move v2, p2

    .local v2, "index":I
    const-string v5, ""

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v2

    if-gez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 594
    .end local v0    # "font":Ljavafx/scene/text/Font;
    :goto_0
    return v0

    .line 575
    .restart local v0    # "font":Ljavafx/scene/text/Font;
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v2

    if-gt v5, v6, :cond_2

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v0, v5

    goto :goto_0

    .line 578
    :cond_2
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 579
    move v5, v2

    move v0, v5

    goto :goto_0

    .line 581
    :cond_3
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/Utils;->requiresComplexLayout(Ljavafx/scene/text/Font;Ljava/lang/String;)Z

    move-result v5

    move v3, v5

    .line 582
    .local v3, "complexLayout":Z
    move v5, v3

    if-eqz v5, :cond_4

    .line 584
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 588
    :cond_4
    move v5, v2

    move v4, v5

    .line 589
    .local v4, "i":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_6

    .line 590
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 591
    move v5, v4

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    goto :goto_0

    .line 594
    :cond_6
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method static computeTextHeight(Ljavafx/scene/text/Font;Ljava/lang/String;DDLjavafx/scene/text/TextBoundsType;)D
    .locals 10

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "font":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "wrappingWidth":D
    move-wide v4, p4

    .local v4, "lineSpacing":D
    move-object/from16 v6, p6

    .local v6, "boundsType":Ljavafx/scene/text/TextBoundsType;
    sget-object v7, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-object v8, v1

    if-eqz v8, :cond_0

    move-object v8, v1

    :goto_0
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/text/Font;->impl_getNativeFont()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/sun/javafx/scene/text/TextLayout;->setContent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    .line 128
    sget-object v7, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-wide v8, v2

    double-to-float v8, v8

    invoke-interface {v7, v8}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v7

    .line 129
    sget-object v7, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-wide v8, v4

    double-to-float v8, v8

    invoke-interface {v7, v8}, Lcom/sun/javafx/scene/text/TextLayout;->setLineSpacing(F)Z

    move-result v7

    .line 130
    move-object v7, v6

    sget-object v8, Ljavafx/scene/text/TextBoundsType;->LOGICAL_VERTICAL_CENTER:Ljavafx/scene/text/TextBoundsType;

    if-ne v7, v8, :cond_1

    .line 131
    sget-object v7, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/16 v8, 0x4000

    invoke-interface {v7, v8}, Lcom/sun/javafx/scene/text/TextLayout;->setBoundsType(I)Z

    move-result v7

    .line 135
    :goto_1
    sget-object v7, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    invoke-interface {v7}, Lcom/sun/javafx/scene/text/TextLayout;->getBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v7

    float-to-double v7, v7

    move-wide v0, v7

    .end local v0    # "font":Ljavafx/scene/text/Font;
    return-wide v0

    .line 127
    .restart local v0    # "font":Ljavafx/scene/text/Font;
    :cond_0
    const-string v8, ""

    goto :goto_0

    .line 133
    :cond_1
    sget-object v7, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/sun/javafx/scene/text/TextLayout;->setBoundsType(I)Z

    move-result v7

    goto :goto_1
.end method

.method static computeTextHeight(Ljavafx/scene/text/Font;Ljava/lang/String;DLjavafx/scene/text/TextBoundsType;)D
    .locals 14

    .prologue
    .line 122
    move-object v1, p0

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v2, p1

    .local v2, "text":Ljava/lang/String;
    move-wide/from16 v3, p2

    .local v3, "wrappingWidth":D
    move-object/from16 v5, p4

    .local v5, "boundsType":Ljavafx/scene/text/TextBoundsType;
    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    const-wide/16 v10, 0x0

    move-object v12, v5

    invoke-static/range {v6 .. v12}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextHeight(Ljavafx/scene/text/Font;Ljava/lang/String;DDLjavafx/scene/text/TextBoundsType;)D

    move-result-wide v6

    move-wide v1, v6

    .end local v1    # "font":Ljavafx/scene/text/Font;
    return-wide v1
.end method

.method static computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D
    .locals 8

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "font":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "wrappingWidth":D
    sget-object v4, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/text/Font;->impl_getNativeFont()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->setContent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .line 117
    sget-object v4, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-wide v5, v2

    double-to-float v5, v5

    invoke-interface {v4, v5}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v4

    .line 118
    sget-object v4, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    invoke-interface {v4}, Lcom/sun/javafx/scene/text/TextLayout;->getBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v4

    float-to-double v4, v4

    move-wide v0, v4

    .end local v0    # "font":Ljavafx/scene/text/Font;
    return-wide v0

    .line 116
    .restart local v0    # "font":Ljavafx/scene/text/Font;
    :cond_0
    const-string v5, ""

    goto :goto_0
.end method

.method static computeTruncationIndex(Ljavafx/scene/text/Font;Ljava/lang/String;D)I
    .locals 20

    .prologue
    .line 139
    move-object/from16 v1, p0

    .local v1, "font":Ljavafx/scene/text/Font;
    move-object/from16 v2, p1

    .local v2, "text":Ljava/lang/String;
    move-wide/from16 v3, p2

    .local v3, "width":D
    sget-object v8, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 140
    sget-object v8, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->setFont(Ljavafx/scene/text/Font;)V

    .line 141
    sget-object v8, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/text/Text;->setWrappingWidth(D)V

    .line 142
    sget-object v8, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/text/Text;->setLineSpacing(D)V

    .line 146
    sget-object v8, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v8

    move-object v5, v8

    .line 147
    .local v5, "bounds":Ljavafx/geometry/Bounds;
    new-instance v8, Ljavafx/geometry/Point2D;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-wide v10, v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sub-double/2addr v10, v12

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v12

    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v6, v8

    .line 148
    .local v6, "endPoint":Ljavafx/geometry/Point2D;
    sget-object v8, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v8

    move v7, v8

    .line 150
    .local v7, "index":I
    sget-object v8, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    sget-wide v9, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_WRAPPING_WIDTH:D

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/text/Text;->setWrappingWidth(D)V

    .line 151
    sget-object v8, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    sget-wide v9, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_LINE_SPACING:D

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/text/Text;->setLineSpacing(D)V

    .line 152
    sget-object v8, Lcom/sun/javafx/scene/control/skin/Utils;->helper:Ljavafx/scene/text/Text;

    sget-object v9, Lcom/sun/javafx/scene/control/skin/Utils;->DEFAULT_TEXT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 153
    move v8, v7

    move v1, v8

    .end local v1    # "font":Ljavafx/scene/text/Font;
    return v1
.end method

.method static computeXOffset(DDLjavafx/geometry/HPos;)D
    .locals 10

    .prologue
    .line 702
    move-wide v1, p0

    .local v1, "width":D
    move-wide v3, p2

    .local v3, "contentWidth":D
    move-object v5, p4

    .local v5, "hpos":Ljavafx/geometry/HPos;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 703
    const-wide/16 v6, 0x0

    move-wide v1, v6

    .line 714
    .end local v1    # "width":D
    :goto_0
    return-wide v1

    .line 706
    .restart local v1    # "width":D
    :cond_0
    sget-object v6, Lcom/sun/javafx/scene/control/skin/Utils$2;->$SwitchMap$javafx$geometry$HPos:[I

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/geometry/HPos;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 714
    const-wide/16 v6, 0x0

    move-wide v1, v6

    goto :goto_0

    .line 708
    :pswitch_0
    const-wide/16 v6, 0x0

    move-wide v1, v6

    goto :goto_0

    .line 710
    :pswitch_1
    move-wide v6, v1

    move-wide v8, v3

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 712
    :pswitch_2
    move-wide v6, v1

    move-wide v8, v3

    sub-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static computeYOffset(DDLjavafx/geometry/VPos;)D
    .locals 10

    .prologue
    .line 719
    move-wide v1, p0

    .local v1, "height":D
    move-wide v3, p2

    .local v3, "contentHeight":D
    move-object v5, p4

    .local v5, "vpos":Ljavafx/geometry/VPos;
    move-object v6, v5

    if-nez v6, :cond_0

    .line 720
    const-wide/16 v6, 0x0

    move-wide v1, v6

    .line 731
    .end local v1    # "height":D
    :goto_0
    return-wide v1

    .line 723
    .restart local v1    # "height":D
    :cond_0
    sget-object v6, Lcom/sun/javafx/scene/control/skin/Utils$2;->$SwitchMap$javafx$geometry$VPos:[I

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 731
    const-wide/16 v6, 0x0

    move-wide v1, v6

    goto :goto_0

    .line 725
    :pswitch_0
    const-wide/16 v6, 0x0

    move-wide v1, v6

    goto :goto_0

    .line 727
    :pswitch_1
    move-wide v6, v1

    move-wide v8, v3

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 729
    :pswitch_2
    move-wide v6, v1

    move-wide v8, v3

    sub-double/2addr v6, v8

    move-wide v1, v6

    goto :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static executeOnceWhenPropertyIsNonNull(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljava/util/function/Consumer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "p":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v1, p1

    .local v1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    move-object v4, v0

    if-nez v4, :cond_0

    .line 790
    :goto_0
    return-void

    .line 774
    :cond_0
    move-object v4, v0

    invoke-interface {v4}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 775
    .local v2, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 776
    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 790
    :goto_1
    goto :goto_0

    .line 778
    :cond_1
    new-instance v4, Lcom/sun/javafx/scene/control/skin/Utils$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/Utils$1;-><init>(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V

    move-object v3, v4

    .line 788
    .local v3, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_1
.end method

.method private static firstBreakCharIndex(Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move v1, p1

    .local v1, "start":I
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move-object v2, v4

    .line 525
    .local v2, "chars":[C
    move v4, v1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 526
    move-object v4, v2

    move v5, v3

    aget-char v4, v4, v5

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/Utils;->isPreferredBreakCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 527
    move v4, v3

    move v0, v4

    .line 530
    .end local v0    # "str":Ljava/lang/String;
    :goto_1
    return v0

    .line 525
    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 530
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method static getAscent(Ljavafx/scene/text/Font;Ljavafx/scene/text/TextBoundsType;)D
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "font":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "boundsType":Ljavafx/scene/text/TextBoundsType;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const-string v3, ""

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/text/Font;->impl_getNativeFont()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/scene/text/TextLayout;->setContent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    .line 91
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v2

    .line 92
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/text/TextLayout;->setLineSpacing(F)Z

    move-result v2

    .line 93
    move-object v2, v1

    sget-object v3, Ljavafx/scene/text/TextBoundsType;->LOGICAL_VERTICAL_CENTER:Ljavafx/scene/text/TextBoundsType;

    if-ne v2, v3, :cond_0

    .line 94
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/text/TextLayout;->setBoundsType(I)Z

    move-result v2

    .line 98
    :goto_0
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    invoke-interface {v2}, Lcom/sun/javafx/scene/text/TextLayout;->getBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    move-wide v0, v2

    .end local v0    # "font":Ljavafx/scene/text/Font;
    return-wide v0

    .line 96
    .restart local v0    # "font":Ljavafx/scene/text/Font;
    :cond_0
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/text/TextLayout;->setBoundsType(I)Z

    move-result v2

    goto :goto_0
.end method

.method public static getHitInsertionIndex(Lcom/sun/javafx/scene/text/HitInfo;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v4

    move v2, v4

    .line 754
    .local v2, "charIndex":I
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/text/HitInfo;->isLeading()Z

    move-result v4

    if-nez v4, :cond_1

    .line 755
    sget-object v4, Lcom/sun/javafx/scene/control/skin/Utils;->charIterator:Ljava/text/BreakIterator;

    if-nez v4, :cond_0

    .line 756
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v4

    sput-object v4, Lcom/sun/javafx/scene/control/skin/Utils;->charIterator:Ljava/text/BreakIterator;

    .line 758
    :cond_0
    sget-object v4, Lcom/sun/javafx/scene/control/skin/Utils;->charIterator:Ljava/text/BreakIterator;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 759
    sget-object v4, Lcom/sun/javafx/scene/control/skin/Utils;->charIterator:Ljava/text/BreakIterator;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/text/BreakIterator;->following(I)I

    move-result v4

    move v3, v4

    .line 760
    .local v3, "next":I
    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 761
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/text/HitInfo;->getInsertionIndex()I

    move-result v4

    move v2, v4

    .line 766
    .end local v3    # "next":I
    :cond_1
    :goto_0
    move v4, v2

    move v0, v4

    .end local v0    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    return v0

    .line 763
    .restart local v0    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .restart local v3    # "next":I
    :cond_2
    move v4, v3

    move v2, v4

    goto :goto_0
.end method

.method static getLineHeight(Ljavafx/scene/text/Font;Ljavafx/scene/text/TextBoundsType;)D
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "font":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "boundsType":Ljavafx/scene/text/TextBoundsType;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const-string v3, ""

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/text/Font;->impl_getNativeFont()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/scene/text/TextLayout;->setContent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    .line 103
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v2

    .line 104
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/text/TextLayout;->setLineSpacing(F)Z

    move-result v2

    .line 105
    move-object v2, v1

    sget-object v3, Ljavafx/scene/text/TextBoundsType;->LOGICAL_VERTICAL_CENTER:Ljavafx/scene/text/TextBoundsType;

    if-ne v2, v3, :cond_0

    .line 106
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/16 v3, 0x4000

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/text/TextLayout;->setBoundsType(I)Z

    move-result v2

    .line 112
    :goto_0
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    invoke-interface {v2}, Lcom/sun/javafx/scene/text/TextLayout;->getLines()[Lcom/sun/javafx/scene/text/TextLine;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/sun/javafx/scene/text/TextLine;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v2

    float-to-double v2, v2

    move-wide v0, v2

    .end local v0    # "font":Ljavafx/scene/text/Font;
    return-wide v0

    .line 108
    .restart local v0    # "font":Ljavafx/scene/text/Font;
    :cond_0
    sget-object v2, Lcom/sun/javafx/scene/control/skin/Utils;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/text/TextLayout;->setBoundsType(I)Z

    move-result v2

    goto :goto_0
.end method

.method private static isPreferredBreakCharacter(C)Z
    .locals 2

    .prologue
    .line 548
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    const/4 v1, 0x1

    move v0, v1

    .line 556
    .end local v0    # "ch":C
    :goto_0
    return v0

    .line 551
    .restart local v0    # "ch":C
    :cond_0
    move v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 556
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 555
    :sswitch_0
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .line 551
    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
    .end sparse-switch
.end method

.method public static isTwoLevelFocus()Z
    .locals 1

    .prologue
    .line 745
    sget-object v0, Ljavafx/application/ConditionalFeature;->TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    return v0
.end method

.method private static lastBreakCharIndex(Ljava/lang/String;I)I
    .locals 6

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move v1, p1

    .local v1, "start":I
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move-object v2, v4

    .line 535
    .local v2, "chars":[C
    move v4, v1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    if-ltz v4, :cond_1

    .line 536
    move-object v4, v2

    move v5, v3

    aget-char v4, v4, v5

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/Utils;->isPreferredBreakCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 537
    move v4, v3

    move v0, v4

    .line 540
    .end local v0    # "str":Ljava/lang/String;
    :goto_1
    return v0

    .line 535
    .restart local v0    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 540
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method static removeMnemonics(Ljavafx/scene/control/ContextMenu;Ljavafx/scene/Scene;)V
    .locals 14

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "popup":Ljavafx/scene/control/ContextMenu;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v10

    if-nez v10, :cond_2

    .line 672
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ContextMenu;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v2, v10

    .line 675
    .local v2, "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    :goto_0
    move v10, v4

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v11

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 676
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v10

    move v11, v4

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/MenuItem;

    move-object v3, v10

    .line 680
    .local v3, "menuitem":Ljavafx/scene/control/MenuItem;
    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/MenuItem;->isMnemonicParsing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 682
    new-instance v10, Lcom/sun/javafx/scene/control/behavior/TextBinding;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/control/MenuItem;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sun/javafx/scene/control/behavior/TextBinding;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 683
    .local v5, "bindings":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicIndex()I

    move-result v10

    move v6, v10

    .line 684
    .local v6, "mnemonicIndex":I
    move v10, v6

    if-ltz v10, :cond_1

    .line 685
    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/TextBinding;->getMnemonicKeyCombination()Ljavafx/scene/input/KeyCombination;

    move-result-object v10

    move-object v7, v10

    .line 687
    .local v7, "mnemonicKeyCombo":Ljavafx/scene/input/KeyCombination;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/Scene;->getMnemonics()Ljavafx/collections/ObservableMap;

    move-result-object v10

    move-object v11, v7

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/collections/ObservableList;

    move-object v8, v10

    .line 688
    .local v8, "mnemonicsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    move-object v10, v8

    if-eqz v10, :cond_1

    .line 689
    const/4 v10, 0x0

    move v9, v10

    .local v9, "j":I
    :goto_1
    move v10, v9

    move-object v11, v8

    invoke-interface {v11}, Ljavafx/collections/ObservableList;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 690
    move-object v10, v8

    move v11, v9

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/input/Mnemonic;

    invoke-virtual {v10}, Ljavafx/scene/input/Mnemonic;->getNode()Ljavafx/scene/Node;

    move-result-object v10

    move-object v11, v2

    move v12, v4

    invoke-virtual {v11, v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->getLabelAt(I)Ljavafx/scene/control/Label;

    move-result-object v11

    if-ne v10, v11, :cond_0

    .line 691
    move-object v10, v8

    move v11, v9

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    .line 689
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 675
    .end local v5    # "bindings":Lcom/sun/javafx/scene/control/behavior/TextBinding;
    .end local v6    # "mnemonicIndex":I
    .end local v7    # "mnemonicKeyCombo":Ljavafx/scene/input/KeyCombination;
    .end local v8    # "mnemonicsList":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/Mnemonic;>;"
    .end local v9    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 699
    .end local v2    # "cmContent":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    .end local v3    # "menuitem":Ljavafx/scene/control/MenuItem;
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method private static requiresComplexLayout(Ljavafx/scene/text/Font;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "font":Ljavafx/scene/text/Font;
    move-object v1, p1

    .local v1, "string":Ljava/lang/String;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "font":Ljavafx/scene/text/Font;
    return v0
.end method
