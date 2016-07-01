.class public Lcom/sun/javafx/tk/quantum/OverlayWarning;
.super Ljavafx/scene/Group;
.source "OverlayWarning.java"


# static fields
.field private static final ARC:F = 20.0f

.field private static final FONTSIZE:I = 0x18

.field private static final PAD:F = 40.0f

.field private static final RECTH:F = 100.0f

.field private static final RECTW:F = 600.0f


# instance fields
.field private background:Ljavafx/scene/shape/Rectangle;

.field private overlayTransition:Ljavafx/animation/SequentialTransition;

.field private text:Ljavafx/scene/text/Text;

.field private view:Lcom/sun/javafx/tk/quantum/ViewScene;

.field private warningTransition:Z


# direct methods
.method public constructor <init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, p1

    .local v1, "vs":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/Group;-><init>()V

    .line 108
    move-object v4, v0

    new-instance v5, Ljavafx/scene/text/Text;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljavafx/scene/text/Text;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    .line 57
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 59
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->createOverlayGroup()V

    .line 61
    new-instance v4, Ljavafx/animation/PauseTransition;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-wide v6, 0x40af400000000000L    # 4000.0

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/animation/PauseTransition;-><init>(Ljavafx/util/Duration;)V

    move-object v2, v4

    .line 62
    .local v2, "pause":Ljavafx/animation/PauseTransition;
    new-instance v4, Ljavafx/animation/FadeTransition;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-wide v6, 0x408f400000000000L    # 1000.0

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Ljavafx/animation/FadeTransition;-><init>(Ljavafx/util/Duration;Ljavafx/scene/Node;)V

    move-object v3, v4

    .line 63
    .local v3, "fade":Ljavafx/animation/FadeTransition;
    move-object v4, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v5, v6}, Ljavafx/animation/FadeTransition;->setFromValue(D)V

    .line 64
    move-object v4, v3

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljavafx/animation/FadeTransition;->setToValue(D)V

    .line 66
    move-object v4, v0

    new-instance v5, Ljavafx/animation/SequentialTransition;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljavafx/animation/SequentialTransition;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->overlayTransition:Ljavafx/animation/SequentialTransition;

    .line 67
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->overlayTransition:Ljavafx/animation/SequentialTransition;

    invoke-virtual {v4}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 68
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->overlayTransition:Ljavafx/animation/SequentialTransition;

    invoke-virtual {v4}, Ljavafx/animation/SequentialTransition;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 69
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->overlayTransition:Ljavafx/animation/SequentialTransition;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/OverlayWarning$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/OverlayWarning;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/animation/SequentialTransition;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 73
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/OverlayWarning;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->lambda$new$393(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private createBackground(Ljavafx/scene/text/Text;Ljavafx/geometry/Rectangle2D;)Ljavafx/scene/shape/Rectangle;
    .locals 21

    .prologue
    .line 133
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object/from16 v2, p1

    .local v2, "text":Ljavafx/scene/text/Text;
    move-object/from16 v3, p2

    .local v3, "screen":Ljavafx/geometry/Rectangle2D;
    new-instance v13, Ljavafx/scene/shape/Rectangle;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Ljavafx/scene/shape/Rectangle;-><init>()V

    move-object v4, v13

    .line 134
    .local v4, "rectangle":Ljavafx/scene/shape/Rectangle;
    move-object v13, v2

    invoke-virtual {v13}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v13

    move-wide v5, v13

    .line 135
    .local v5, "textW":D
    move-object v13, v2

    invoke-virtual {v13}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v13

    move-wide v7, v13

    .line 136
    .local v7, "textH":D
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v13

    const-wide v15, 0x4082c00000000000L    # 600.0

    sub-double/2addr v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    move-wide v9, v13

    .line 137
    .local v9, "rectX":D
    move-object v13, v3

    invoke-virtual {v13}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    move-wide v11, v13

    .line 139
    .local v11, "rectY":D
    move-object v13, v4

    const-wide v14, 0x4082c00000000000L    # 600.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 140
    move-object v13, v4

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 141
    move-object v13, v4

    move-wide v14, v9

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 142
    move-object v13, v4

    move-wide v14, v11

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    sub-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 143
    move-object v13, v4

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Rectangle;->setArcWidth(D)V

    .line 144
    move-object v13, v4

    const-wide/high16 v14, 0x4034000000000000L    # 20.0

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Rectangle;->setArcHeight(D)V

    .line 145
    move-object v13, v4

    const-wide/16 v14, 0x0

    const-wide v16, 0x3fe3333333333333L    # 0.6

    invoke-static/range {v14 .. v17}, Ljavafx/scene/paint/Color;->gray(DD)Ljavafx/scene/paint/Color;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavafx/scene/shape/Rectangle;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 147
    move-object v13, v2

    move-wide v14, v9

    const-wide v16, 0x4082c00000000000L    # 600.0

    move-wide/from16 v18, v5

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/text/Text;->setX(D)V

    .line 148
    move-object v13, v2

    move-wide v14, v11

    const-wide/high16 v16, 0x4049000000000000L    # 50.0

    sub-double v14, v14, v16

    move-wide/from16 v16, v7

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/text/Text;->getBaselineOffset()D

    move-result-wide v18

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    add-double v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/text/Text;->setY(D)V

    .line 150
    move-object v13, v4

    move-object v1, v13

    .end local v1    # "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    return-object v1
.end method

.method private createOverlayGroup()V
    .locals 15

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    new-instance v4, Ljavafx/scene/text/Font;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/text/Font;->getFamily()Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/text/Font;-><init>(Ljava/lang/String;D)V

    move-object v1, v4

    .line 113
    .local v1, "font":Ljavafx/scene/text/Font;
    new-instance v4, Ljavafx/geometry/Rectangle2D;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 114
    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/ViewScene;->getSceneState()Lcom/sun/javafx/tk/quantum/SceneState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/SceneState;->getScreenWidth()I

    move-result v10

    int-to-double v10, v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 115
    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/ViewScene;->getSceneState()Lcom/sun/javafx/tk/quantum/SceneState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/tk/quantum/SceneState;->getScreenHeight()I

    move-result v12

    int-to-double v12, v12

    invoke-direct/range {v5 .. v13}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    move-object v2, v4

    .line 117
    .local v2, "screenBounds":Ljavafx/geometry/Rectangle2D;
    const-string v4, "-fx-effect: dropshadow(two-pass-box, rgba(0,0,0,0.75), 3, 0.0, 0, 2);"

    move-object v3, v4

    .line 119
    .local v3, "TEXT_CSS":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    sget-object v5, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 120
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    sget-object v5, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 121
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setFont(Ljavafx/scene/text/Font;)V

    .line 122
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    const-wide v5, 0x4080400000000000L    # 520.0

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/text/Text;->setWrappingWidth(D)V

    .line 123
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setStyle(Ljava/lang/String;)V

    .line 124
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    sget-object v5, Ljavafx/scene/text/TextAlignment;->CENTER:Ljavafx/scene/text/TextAlignment;

    invoke-virtual {v4, v5}, Ljavafx/scene/text/Text;->setTextAlignment(Ljavafx/scene/text/TextAlignment;)V

    .line 126
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->createBackground(Ljavafx/scene/text/Text;Ljavafx/geometry/Rectangle2D;)Ljavafx/scene/shape/Rectangle;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/tk/quantum/OverlayWarning;->background:Ljavafx/scene/shape/Rectangle;

    .line 128
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/OverlayWarning;->background:Ljavafx/scene/shape/Rectangle;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 129
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 130
    return-void
.end method

.method private synthetic lambda$new$393(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->warningTransition:Z

    .line 71
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->setWarning(Lcom/sun/javafx/tk/quantum/OverlayWarning;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/OverlayWarning;->overlayTransition:Ljavafx/animation/SequentialTransition;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/OverlayWarning;->overlayTransition:Ljavafx/animation/SequentialTransition;

    .line 97
    invoke-virtual {v1}, Ljavafx/animation/SequentialTransition;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v1

    sget-object v2, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v1, v2, :cond_0

    .line 98
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/OverlayWarning;->overlayTransition:Ljavafx/animation/SequentialTransition;

    invoke-virtual {v1}, Ljavafx/animation/SequentialTransition;->stop()V

    .line 99
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/OverlayWarning;->warningTransition:Z

    .line 101
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->setWarning(Lcom/sun/javafx/tk/quantum/OverlayWarning;)V

    .line 102
    return-void
.end method

.method protected getView()Lcom/sun/javafx/tk/quantum/ViewScene;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    return-object v0
.end method

.method protected impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, p1

    .local v1, "dirtyBit":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/Group;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 168
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->synchroniseOverlayWarning()V

    .line 169
    return-void
.end method

.method public impl_updatePeer()V
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->impl_updatePeer()V

    .line 156
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/OverlayWarning;->background:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v1}, Ljavafx/scene/shape/Rectangle;->impl_updatePeer()V

    .line 157
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Group;->impl_updatePeer()V

    .line 158
    return-void
.end method

.method protected inWarningTransition()Z
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/OverlayWarning;->warningTransition:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    return v0
.end method

.method protected final setView(Lcom/sun/javafx/tk/quantum/ViewScene;)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, p1

    .local v1, "vs":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    if-eqz v2, :cond_0

    .line 81
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->setWarning(Lcom/sun/javafx/tk/quantum/OverlayWarning;)V

    .line 84
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    .line 85
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->view:Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->entireSceneNeedsRepaint()V

    .line 86
    return-void
.end method

.method protected updateBounds()V
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Group;->updateBounds()V

    .line 163
    return-void
.end method

.method protected warn(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v1, p1

    .local v1, "msg":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->text:Ljavafx/scene/text/Text;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 91
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->warningTransition:Z

    .line 92
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/OverlayWarning;->overlayTransition:Ljavafx/animation/SequentialTransition;

    invoke-virtual {v2}, Ljavafx/animation/SequentialTransition;->play()V

    .line 93
    return-void
.end method
