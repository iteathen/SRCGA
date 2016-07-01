.class Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
.super Ljavafx/scene/layout/Region;
.source "TextAreaSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Region;-><init>()V

    .line 92
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const-string v3, "content"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 94
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 99
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 104
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;)V
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;-><init>(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->lambda$new$225(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->lambda$new$226(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->lambda$new$227(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;ZZ)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->lambda$layoutChildren$228(ZZ)V

    return-void
.end method

.method private synthetic lambda$layoutChildren$228(ZZ)V
    .locals 5

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move v1, p1

    .local v1, "setFitToWidth":Z
    move v2, p2

    .local v2, "setFitToHeight":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ScrollPane;->setFitToWidth(Z)V

    .line 367
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ScrollPane;->setFitToHeight(Z)V

    .line 368
    return-void
.end method

.method private synthetic lambda$new$225(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 96
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 97
    return-void
.end method

.method private synthetic lambda$new$226(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->mouseReleased(Ljavafx/scene/input/MouseEvent;)V

    .line 101
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 102
    return-void
.end method

.method private synthetic lambda$new$227(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->mouseDragged(Ljavafx/scene/input/MouseEvent;)V

    .line 106
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 107
    return-void
.end method


# virtual methods
.method protected computeMinHeight(D)D
    .locals 13

    .prologue
    .line 180
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 181
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedBottomInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 182
    .local v4, "vInsets":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$800(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v7

    move-wide v9, v4

    add-double/2addr v7, v9

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->computePrefHeight(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$702(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D

    move-result-wide v6

    .line 184
    .end local v4    # "vInsets":D
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v6

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    return-wide v1
.end method

.method protected computeMinWidth(D)D
    .locals 13

    .prologue
    .line 172
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$500(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 173
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedRightInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 174
    .local v4, "hInsets":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$600(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v7

    move-wide v9, v4

    add-double/2addr v7, v9

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->computePrefWidth(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$502(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D

    move-result-wide v6

    .line 176
    .end local v4    # "hInsets":D
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$500(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v6

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    return-wide v1
.end method

.method protected computePrefHeight(D)D
    .locals 17

    .prologue
    .line 139
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-wide/from16 v1, p1

    .local v1, "width":D
    move-wide v10, v1

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$300(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    .line 140
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->invalidateMetrics()V

    .line 141
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-wide v11, v1

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$302(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D

    move-result-wide v10

    .line 144
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$400(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    .line 146
    move-wide v10, v1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    .line 147
    const-wide/16 v10, 0x0

    move-wide v3, v10

    .line 152
    .local v3, "wrappingWidth":D
    :goto_0
    const-wide/16 v10, 0x0

    move-wide v5, v10

    .line 154
    .local v5, "prefHeight":D
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$100(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/Group;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v10

    invoke-interface {v10}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v7, v10

    :goto_1
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Node;

    move-object v8, v10

    .line 155
    .local v8, "node":Ljavafx/scene/Node;
    move-object v10, v8

    check-cast v10, Ljavafx/scene/text/Text;

    move-object v9, v10

    .line 156
    .local v9, "paragraphNode":Ljavafx/scene/text/Text;
    move-wide v10, v5

    move-object v12, v9

    .line 157
    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getFont()Ljavafx/scene/text/Font;

    move-result-object v12

    move-object v13, v9

    .line 158
    invoke-virtual {v13}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v13

    move-wide v14, v3

    move-object/from16 v16, v9

    .line 160
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v16

    .line 156
    invoke-static/range {v12 .. v16}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextHeight(Ljavafx/scene/text/Font;Ljava/lang/String;DLjavafx/scene/text/TextBoundsType;)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v5, v10

    .line 161
    goto :goto_1

    .line 149
    .end local v3    # "wrappingWidth":D
    .end local v5    # "prefHeight":D
    .end local v8    # "node":Ljavafx/scene/Node;
    .end local v9    # "paragraphNode":Ljavafx/scene/text/Text;
    :cond_1
    move-wide v10, v1

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v12

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedRightInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    sub-double/2addr v10, v12

    const-wide/16 v12, 0x0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide v3, v10

    .restart local v3    # "wrappingWidth":D
    goto :goto_0

    .line 163
    .restart local v5    # "prefHeight":D
    :cond_2
    move-wide v10, v5

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v12

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedBottomInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    add-double/2addr v10, v12

    move-wide v5, v10

    .line 165
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    move-object v7, v10

    .line 166
    .local v7, "viewPortBounds":Ljavafx/geometry/Bounds;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-wide v11, v5

    move-object v13, v7

    if-eqz v13, :cond_4

    move-object v13, v7

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v13

    :goto_2
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$402(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D

    move-result-wide v10

    .line 168
    .end local v3    # "wrappingWidth":D
    .end local v5    # "prefHeight":D
    .end local v7    # "viewPortBounds":Ljavafx/geometry/Bounds;
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$400(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v10

    move-wide v0, v10

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    return-wide v0

    .line 166
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    .restart local v3    # "wrappingWidth":D
    .restart local v5    # "prefHeight":D
    .restart local v7    # "viewPortBounds":Ljavafx/geometry/Bounds;
    :cond_4
    const-wide/16 v13, 0x0

    goto :goto_2
.end method

.method protected computePrefWidth(D)D
    .locals 15

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-wide/from16 v1, p1

    .local v1, "height":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 120
    const-wide/16 v8, 0x0

    move-wide v3, v8

    .line 122
    .local v3, "prefWidth":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$100(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/Group;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_0
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v6, v8

    .line 123
    .local v6, "node":Ljavafx/scene/Node;
    move-object v8, v6

    check-cast v8, Ljavafx/scene/text/Text;

    move-object v7, v8

    .line 124
    .local v7, "paragraphNode":Ljavafx/scene/text/Text;
    move-wide v8, v3

    move-object v10, v7

    .line 125
    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getFont()Ljavafx/scene/text/Font;

    move-result-object v10

    move-object v11, v7

    .line 126
    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    .line 125
    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/Utils;->computeTextWidth(Ljavafx/scene/text/Font;Ljava/lang/String;D)D

    move-result-wide v10

    .line 124
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v3, v8

    .line 127
    goto :goto_0

    .line 129
    .end local v6    # "node":Ljavafx/scene/Node;
    .end local v7    # "paragraphNode":Ljavafx/scene/text/Text;
    :cond_0
    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v10

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedRightInset()D

    move-result-wide v12

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v3, v8

    .line 131
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v8

    move-object v5, v8

    .line 132
    .local v5, "viewPortBounds":Ljavafx/geometry/Bounds;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-wide v9, v3

    move-object v11, v5

    if-eqz v11, :cond_2

    move-object v11, v5

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v11

    :goto_1
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$002(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;D)D

    move-result-wide v8

    .line 134
    .end local v3    # "prefWidth":D
    .end local v5    # "viewPortBounds":Ljavafx/geometry/Bounds;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)D

    move-result-wide v8

    move-wide v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    return-wide v0

    .line 132
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    .restart local v3    # "prefWidth":D
    .restart local v5    # "viewPortBounds":Ljavafx/geometry/Bounds;
    :cond_2
    const-wide/16 v11, 0x0

    goto :goto_1
.end method

.method protected getChildren()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/layout/Region;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    return-object v0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    sget-object v1, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    return-object v0
.end method

.method public layoutChildren()V
    .locals 37

    .prologue
    .line 189
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v29

    check-cast v29, Ljavafx/scene/control/TextArea;

    move-object/from16 v4, v29

    .line 190
    .local v4, "textArea":Ljavafx/scene/control/TextArea;
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getWidth()D

    move-result-wide v29

    move-wide/from16 v5, v29

    .line 193
    .local v5, "width":D
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedTopInset()D

    move-result-wide v29

    move-wide/from16 v7, v29

    .line 194
    .local v7, "topPadding":D
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedLeftInset()D

    move-result-wide v29

    move-wide/from16 v9, v29

    .line 196
    .local v9, "leftPadding":D
    move-wide/from16 v29, v5

    move-wide/from16 v31, v9

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->snappedRightInset()D

    move-result-wide v33

    add-double v31, v31, v33

    sub-double v29, v29, v31

    const-wide/16 v31, 0x0

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->max(DD)D

    move-result-wide v29

    move-wide/from16 v11, v29

    .line 198
    .local v11, "wrappingWidth":D
    move-wide/from16 v29, v7

    move-wide/from16 v13, v29

    .line 200
    .local v13, "y":D
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$100(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/Group;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v29

    move-object/from16 v15, v29

    .line 202
    .local v15, "paragraphNodesChildren":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/16 v29, 0x0

    move/from16 v16, v29

    .local v16, "i":I
    :goto_0
    move/from16 v29, v16

    move-object/from16 v30, v15

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 203
    move-object/from16 v29, v15

    move/from16 v30, v16

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljavafx/scene/Node;

    move-object/from16 v17, v29

    .line 204
    .local v17, "node":Ljavafx/scene/Node;
    move-object/from16 v29, v17

    check-cast v29, Ljavafx/scene/text/Text;

    move-object/from16 v18, v29

    .line 205
    .local v18, "paragraphNode":Ljavafx/scene/text/Text;
    move-object/from16 v29, v18

    move-wide/from16 v30, v11

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/text/Text;->setWrappingWidth(D)V

    .line 207
    move-object/from16 v29, v18

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/text/Text;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v29

    move-object/from16 v19, v29

    .line 208
    .local v19, "bounds":Ljavafx/geometry/Bounds;
    move-object/from16 v29, v18

    move-wide/from16 v30, v9

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 209
    move-object/from16 v29, v18

    move-wide/from16 v30, v13

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/text/Text;->setLayoutY(D)V

    .line 211
    move-wide/from16 v29, v13

    move-object/from16 v31, v19

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v31

    add-double v29, v29, v31

    move-wide/from16 v13, v29

    .line 202
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 214
    .end local v17    # "node":Ljavafx/scene/Node;
    .end local v18    # "paragraphNode":Ljavafx/scene/text/Text;
    .end local v19    # "bounds":Ljavafx/geometry/Bounds;
    :cond_0
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$900(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/text/Text;

    move-result-object v29

    if-eqz v29, :cond_1

    .line 215
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$900(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/text/Text;

    move-result-object v29

    move-wide/from16 v30, v9

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 216
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$900(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/text/Text;

    move-result-object v29

    move-wide/from16 v30, v7

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$900(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/text/Text;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/text/Text;->getBaselineOffset()D

    move-result-wide v32

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/text/Text;->setLayoutY(D)V

    .line 217
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$900(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/text/Text;

    move-result-object v29

    move-wide/from16 v30, v11

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/text/Text;->setWrappingWidth(D)V

    .line 221
    :cond_1
    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TextArea;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v29

    move-object/from16 v16, v29

    .line 222
    .local v16, "selection":Ljavafx/scene/control/IndexRange;
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/shape/Path;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v29

    move-object/from16 v17, v29

    .line 224
    .local v17, "oldCaretBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/Group;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljavafx/collections/ObservableList;->clear()V

    .line 226
    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TextArea;->getCaretPosition()I

    move-result v29

    move/from16 v18, v29

    .line 227
    .local v18, "caretPos":I
    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TextArea;->getAnchor()I

    move-result v29

    move/from16 v19, v29

    .line 229
    .local v19, "anchorPos":I
    sget-boolean v29, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->SHOW_HANDLES:Z

    if-eqz v29, :cond_3

    .line 231
    move-object/from16 v29, v16

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v29

    if-lez v29, :cond_8

    .line 232
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v30, v0

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    const-wide/high16 v33, -0x4010000000000000L    # -1.0

    .line 233
    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v32

    .line 232
    invoke-virtual/range {v29 .. v33}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 234
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v30, v0

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    const-wide/high16 v33, -0x4010000000000000L    # -1.0

    .line 235
    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v32

    .line 234
    invoke-virtual/range {v29 .. v33}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 243
    :goto_1
    move-object/from16 v29, v16

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v29

    if-lez v29, :cond_3

    .line 244
    move-object/from16 v29, v15

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v20, v29

    .line 245
    .local v20, "paragraphIndex":I
    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TextArea;->getLength()I

    move-result v29

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v21, v29

    .line 246
    .local v21, "paragraphOffset":I
    const/16 v29, 0x0

    move-object/from16 v22, v29

    .line 248
    .local v22, "paragraphNode":Ljavafx/scene/text/Text;
    :cond_2
    move-object/from16 v29, v15

    add-int/lit8 v20, v20, -0x1

    move/from16 v30, v20

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljavafx/scene/text/Text;

    move-object/from16 v22, v29

    .line 249
    move/from16 v29, v21

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    sub-int v29, v29, v30

    move/from16 v21, v29

    .line 250
    move/from16 v29, v19

    move/from16 v30, v21

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_2

    .line 252
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move/from16 v30, v19

    move/from16 v31, v21

    sub-int v30, v30, v31

    invoke-static/range {v29 .. v30}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1100(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;I)V

    .line 253
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljavafx/collections/ObservableList;->clear()V

    .line 254
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v29

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getImpl_caretShape()[Ljavafx/scene/shape/PathElement;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v29

    .line 255
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 256
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 258
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/shape/Path;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v29

    move-object/from16 v23, v29

    .line 259
    .local v23, "b":Ljavafx/geometry/Bounds;
    move/from16 v29, v18

    move/from16 v30, v19

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 260
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v23

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    sub-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 261
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v23

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v30

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 271
    .end local v20    # "paragraphIndex":I
    .end local v21    # "paragraphOffset":I
    .end local v22    # "paragraphNode":Ljavafx/scene/text/Text;
    .end local v23    # "b":Ljavafx/geometry/Bounds;
    :cond_3
    :goto_2
    move-object/from16 v29, v15

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v20, v29

    .line 272
    .restart local v20    # "paragraphIndex":I
    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TextArea;->getLength()I

    move-result v29

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v21, v29

    .line 274
    .restart local v21    # "paragraphOffset":I
    const/16 v29, 0x0

    move-object/from16 v22, v29

    .line 276
    .restart local v22    # "paragraphNode":Ljavafx/scene/text/Text;
    :cond_4
    move-object/from16 v29, v15

    add-int/lit8 v20, v20, -0x1

    move/from16 v30, v20

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljavafx/scene/text/Text;

    move-object/from16 v22, v29

    .line 277
    move/from16 v29, v21

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x1

    add-int/lit8 v30, v30, 0x1

    sub-int v29, v29, v30

    move/from16 v21, v29

    .line 278
    move/from16 v29, v18

    move/from16 v30, v21

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_4

    .line 280
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move/from16 v30, v18

    move/from16 v31, v21

    sub-int v30, v30, v31

    invoke-static/range {v29 .. v30}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1100(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;I)V

    .line 282
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljavafx/collections/ObservableList;->clear()V

    .line 283
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v29

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getImpl_caretShape()[Ljavafx/scene/shape/PathElement;

    move-result-object v30

    invoke-interface/range {v29 .. v30}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v29

    .line 285
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 288
    move-object/from16 v29, v22

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    move-object/from16 v32, v22

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v32

    mul-double v30, v30, v32

    move-object/from16 v32, v22

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/text/Text;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v32

    sub-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 290
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 291
    move-object/from16 v29, v17

    if-eqz v29, :cond_5

    move-object/from16 v29, v17

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/shape/Path;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_6

    .line 292
    :cond_5
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V

    .line 297
    :cond_6
    move-object/from16 v29, v16

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/IndexRange;->getStart()I

    move-result v29

    move/from16 v20, v29

    .line 298
    .local v20, "start":I
    move-object/from16 v29, v16

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/IndexRange;->getEnd()I

    move-result v29

    move/from16 v21, v29

    .line 299
    .local v21, "end":I
    const/16 v29, 0x0

    move/from16 v22, v29

    .local v22, "i":I
    move-object/from16 v29, v15

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v23, v29

    .local v23, "max":I
    :goto_3
    move/from16 v29, v22

    move/from16 v30, v23

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 300
    move-object/from16 v29, v15

    move/from16 v30, v22

    invoke-interface/range {v29 .. v30}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljavafx/scene/Node;

    move-object/from16 v24, v29

    .line 301
    .local v24, "paragraphNode":Ljavafx/scene/Node;
    move-object/from16 v29, v24

    check-cast v29, Ljavafx/scene/text/Text;

    move-object/from16 v25, v29

    .line 302
    .local v25, "textNode":Ljavafx/scene/text/Text;
    move-object/from16 v29, v25

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    move/from16 v26, v29

    .line 303
    .local v26, "paragraphLength":I
    move/from16 v29, v21

    move/from16 v30, v20

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_a

    move/from16 v29, v20

    move/from16 v30, v26

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 304
    move-object/from16 v29, v25

    move/from16 v30, v20

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/text/Text;->setImpl_selectionStart(I)V

    .line 305
    move-object/from16 v29, v25

    move/from16 v30, v21

    move/from16 v31, v26

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->min(II)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/text/Text;->setImpl_selectionEnd(I)V

    .line 307
    new-instance v29, Ljavafx/scene/shape/Path;

    move-object/from16 v36, v29

    move-object/from16 v29, v36

    move-object/from16 v30, v36

    invoke-direct/range {v30 .. v30}, Ljavafx/scene/shape/Path;-><init>()V

    move-object/from16 v27, v29

    .line 308
    .local v27, "selectionHighlightPath":Ljavafx/scene/shape/Path;
    move-object/from16 v29, v27

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/shape/Path;->setManaged(Z)V

    .line 309
    move-object/from16 v29, v27

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/shape/Path;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 310
    move-object/from16 v29, v25

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/text/Text;->getImpl_selectionShape()[Ljavafx/scene/shape/PathElement;

    move-result-object v29

    move-object/from16 v28, v29

    .line 311
    .local v28, "selectionShape":[Ljavafx/scene/shape/PathElement;
    move-object/from16 v29, v28

    if-eqz v29, :cond_7

    .line 312
    move-object/from16 v29, v27

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v29

    move-object/from16 v30, v28

    invoke-interface/range {v29 .. v30}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v29

    .line 314
    :cond_7
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/Group;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v29

    move-object/from16 v30, v27

    invoke-interface/range {v29 .. v30}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v29

    .line 315
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/Group;

    move-result-object v29

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/Group;->setVisible(Z)V

    .line 316
    move-object/from16 v29, v27

    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getLayoutX()D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/shape/Path;->setLayoutX(D)V

    .line 317
    move-object/from16 v29, v27

    move-object/from16 v30, v25

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/text/Text;->getLayoutY()D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/shape/Path;->setLayoutY(D)V

    .line 318
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->updateHighlightFill()V

    .line 319
    .line 324
    .end local v27    # "selectionHighlightPath":Ljavafx/scene/shape/Path;
    .end local v28    # "selectionShape":[Ljavafx/scene/shape/PathElement;
    :goto_4
    const/16 v29, 0x0

    move/from16 v30, v20

    move/from16 v31, v26

    sub-int v30, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v20, v29

    .line 325
    const/16 v29, 0x0

    move/from16 v30, v21

    move/from16 v31, v26

    sub-int v30, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v21, v29

    .line 299
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 237
    .end local v20    # "start":I
    .end local v21    # "end":I
    .end local v22    # "i":I
    .end local v23    # "max":I
    .end local v24    # "paragraphNode":Ljavafx/scene/Node;
    .end local v25    # "textNode":Ljavafx/scene/text/Text;
    .end local v26    # "paragraphLength":I
    :cond_8
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v30, v0

    const-wide/high16 v31, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v30 .. v32}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    const-wide/high16 v33, -0x4010000000000000L    # -1.0

    .line 238
    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v32

    .line 237
    invoke-virtual/range {v29 .. v33}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    goto/16 :goto_1

    .line 263
    .local v20, "paragraphIndex":I
    .local v21, "paragraphOffset":I
    .local v22, "paragraphNode":Ljavafx/scene/text/Text;
    .local v23, "b":Ljavafx/geometry/Bounds;
    :cond_9
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v23

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    sub-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 264
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v23

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v32

    sub-double v30, v30, v32

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    goto/16 :goto_2

    .line 320
    .local v20, "start":I
    .local v21, "end":I
    .local v22, "i":I
    .local v23, "max":I
    .restart local v24    # "paragraphNode":Ljavafx/scene/Node;
    .restart local v25    # "textNode":Ljavafx/scene/text/Text;
    .restart local v26    # "paragraphLength":I
    :cond_a
    move-object/from16 v29, v25

    const/16 v30, -0x1

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/text/Text;->setImpl_selectionStart(I)V

    .line 321
    move-object/from16 v29, v25

    const/16 v30, -0x1

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/text/Text;->setImpl_selectionEnd(I)V

    .line 322
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1000(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/Group;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljavafx/scene/Group;->setVisible(Z)V

    goto/16 :goto_4

    .line 328
    .end local v24    # "paragraphNode":Ljavafx/scene/Node;
    .end local v25    # "textNode":Ljavafx/scene/text/Text;
    .end local v26    # "paragraphLength":I
    :cond_b
    sget-boolean v29, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;->SHOW_HANDLES:Z

    if-eqz v29, :cond_c

    .line 331
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretPath:Ljavafx/scene/shape/Path;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/shape/Path;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v29

    move-object/from16 v22, v29

    .line 332
    .local v22, "b":Ljavafx/geometry/Bounds;
    move-object/from16 v29, v16

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v29

    if-lez v29, :cond_15

    .line 333
    move/from16 v29, v18

    move/from16 v30, v19

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    .line 334
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    sub-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 335
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle1:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v32

    sub-double v30, v30, v32

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 346
    .end local v22    # "b":Ljavafx/geometry/Bounds;
    :cond_c
    :goto_5
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/ScrollPane;->getPrefViewportWidth()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-eqz v29, :cond_d

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    .line 347
    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/ScrollPane;->getPrefViewportHeight()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-nez v29, :cond_10

    .line 348
    :cond_d
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V

    .line 349
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)V

    .line 350
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getParent()Ljavafx/scene/Parent;

    move-result-object v29

    if-eqz v29, :cond_e

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/ScrollPane;->getPrefViewportWidth()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-gtz v29, :cond_f

    :cond_e
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    .line 351
    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/ScrollPane;->getPrefViewportHeight()D

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmpl-double v29, v29, v31

    if-lez v29, :cond_10

    .line 353
    :cond_f
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getParent()Ljavafx/scene/Parent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/Parent;->requestLayout()V

    .line 359
    :cond_10
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/ScrollPane;->getViewportBounds()Ljavafx/geometry/Bounds;

    move-result-object v29

    move-object/from16 v22, v29

    .line 360
    .local v22, "viewportBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/ScrollPane;->isFitToWidth()Z

    move-result v29

    move/from16 v23, v29

    .line 361
    .local v23, "wasFitToWidth":Z
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->access$200(Lcom/sun/javafx/scene/control/skin/TextAreaSkin;)Ljavafx/scene/control/ScrollPane;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/ScrollPane;->isFitToHeight()Z

    move-result v29

    move/from16 v24, v29

    .line 362
    .local v24, "wasFitToHeight":Z
    move-object/from16 v29, v4

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/control/TextArea;->isWrapText()Z

    move-result v29

    if-nez v29, :cond_11

    move-object/from16 v29, v3

    const-wide/high16 v30, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v29 .. v31}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->computePrefWidth(D)D

    move-result-wide v29

    move-object/from16 v31, v22

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v31

    cmpg-double v29, v29, v31

    if-gtz v29, :cond_16

    :cond_11
    const/16 v29, 0x1

    :goto_6
    move/from16 v25, v29

    .line 363
    .local v25, "setFitToWidth":Z
    move-object/from16 v29, v3

    move-wide/from16 v30, v5

    invoke-virtual/range {v29 .. v31}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->computePrefHeight(D)D

    move-result-wide v29

    move-object/from16 v31, v22

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v31

    cmpg-double v29, v29, v31

    if-gtz v29, :cond_17

    const/16 v29, 0x1

    :goto_7
    move/from16 v26, v29

    .line 364
    .local v26, "setFitToHeight":Z
    move/from16 v29, v23

    move/from16 v30, v25

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    move/from16 v29, v24

    move/from16 v30, v26

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_13

    .line 365
    :cond_12
    move-object/from16 v29, v3

    move/from16 v30, v25

    move/from16 v31, v26

    invoke-static/range {v29 .. v31}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;ZZ)Ljava/lang/Runnable;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 369
    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->getParent()Ljavafx/scene/Parent;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/Parent;->requestLayout()V

    .line 371
    :cond_13
    return-void

    .line 337
    .end local v24    # "wasFitToHeight":Z
    .end local v25    # "setFitToWidth":Z
    .end local v26    # "setFitToHeight":Z
    .local v22, "b":Ljavafx/geometry/Bounds;
    .local v23, "max":I
    :cond_14
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    sub-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 338
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->selectionHandle2:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v30

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    sub-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    goto/16 :goto_5

    .line 341
    :cond_15
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v30

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/layout/StackPane;->getWidth()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    sub-double v30, v30, v32

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 342
    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin$ContentView;->this$0:Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->caretHandle:Ljavafx/scene/layout/StackPane;

    move-object/from16 v29, v0

    move-object/from16 v30, v22

    invoke-virtual/range {v30 .. v30}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    goto/16 :goto_5

    .line 362
    .local v22, "viewportBounds":Ljavafx/geometry/Bounds;
    .local v23, "wasFitToWidth":Z
    .restart local v24    # "wasFitToHeight":Z
    :cond_16
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 363
    .restart local v25    # "setFitToWidth":Z
    :cond_17
    const/16 v29, 0x0

    goto/16 :goto_7
.end method
