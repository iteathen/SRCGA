.class public Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "ScrollBarBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/ScrollBar;",
        ">;"
    }
.end annotation


# static fields
.field protected static final SCROLL_BAR_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field timeline:Ljavafx/animation/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    .line 99
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->F4:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseDebug"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "DecrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "DecrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "DecrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "DecrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "IncrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "IncrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 107
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "IncrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "IncrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$ScrollBarKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->HOME:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    const-string v5, "Home"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->END:Ljavafx/scene/input/KeyCode;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    const-string v5, "End"

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/event/EventType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 112
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ScrollBar;)V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, p1

    .local v1, "scrollBar":Ljavafx/scene/control/ScrollBar;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->SCROLL_BAR_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 64
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;DLjavafx/scene/control/ScrollBar;ZLjavafx/event/ActionEvent;)V
    .locals 13

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v1

    move-wide v8, v2

    move-object v10, v4

    move v11, v5

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->lambda$trackPress$206(DLjavafx/scene/control/ScrollBar;ZLjavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;Ljavafx/scene/control/ScrollBar;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->lambda$decButtonPressed$207(Ljavafx/scene/control/ScrollBar;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;Ljavafx/scene/control/ScrollBar;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->lambda$incButtonPressed$208(Ljavafx/scene/control/ScrollBar;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private synthetic lambda$decButtonPressed$207(Ljavafx/scene/control/ScrollBar;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 215
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v2, p1

    .local v2, "bar":Ljavafx/scene/control/ScrollBar;
    move-object v3, p2

    .local v3, "event":Ljavafx/event/ActionEvent;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 216
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->decrement()V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->stopTimeline()V

    goto :goto_0
.end method

.method private synthetic lambda$incButtonPressed$208(Ljavafx/scene/control/ScrollBar;Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 249
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v2, p1

    .local v2, "bar":Ljavafx/scene/control/ScrollBar;
    move-object v3, p2

    .local v3, "event":Ljavafx/event/ActionEvent;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 250
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->increment()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->stopTimeline()V

    goto :goto_0
.end method

.method private synthetic lambda$trackPress$206(DLjavafx/scene/control/ScrollBar;ZLjavafx/event/ActionEvent;)V
    .locals 17

    .prologue
    .line 178
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-wide/from16 v2, p1

    .local v2, "pos":D
    move-object/from16 v4, p3

    .local v4, "bar":Ljavafx/scene/control/ScrollBar;
    move/from16 v5, p4

    .local v5, "incrementing":Z
    move-object/from16 v6, p5

    .local v6, "event":Ljavafx/event/ActionEvent;
    move-wide v8, v2

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v10

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v14

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    move v7, v8

    .line 179
    .local v7, "i":Z
    move v8, v5

    move v9, v7

    if-ne v8, v9, :cond_1

    .line 182
    move-object v8, v4

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/ScrollBar;->adjustValue(D)V

    .line 187
    :goto_1
    return-void

    .line 178
    .end local v7    # "i":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 185
    .restart local v7    # "i":Z
    :cond_1
    move-object v8, v1

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->stopTimeline()V

    goto :goto_1
.end method

.method private stopTimeline()V
    .locals 3

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    if-eqz v1, :cond_0

    .line 294
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->stop()V

    .line 295
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    .line 297
    :cond_0
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v2, "Home"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->home()V

    .line 136
    :goto_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    .line 137
    return-void

    .line 132
    :cond_0
    const-string v2, "End"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->end()V

    goto :goto_0

    .line 133
    :cond_1
    const-string v2, "IncrementValue"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->incrementValue()V

    goto :goto_0

    .line 134
    :cond_2
    const-string v2, "DecrementValue"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->decrementValue()V

    goto :goto_0

    .line 135
    :cond_3
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public decButtonPressed()V
    .locals 10

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollBar;

    move-object v1, v4

    .line 208
    .local v1, "bar":Ljavafx/scene/control/ScrollBar;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->isFocusTraversable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->requestFocus()V

    .line 209
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->stopTimeline()V

    .line 210
    move-object v4, v0

    new-instance v5, Ljavafx/animation/Timeline;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    .line 211
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 213
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;Ljavafx/scene/control/ScrollBar;)Ljavafx/event/EventHandler;

    move-result-object v4

    move-object v2, v4

    .line 223
    .local v2, "dec":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v7, v2

    const/4 v8, 0x0

    new-array v8, v8, [Ljavafx/animation/KeyValue;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v3, v4

    .line 224
    .local v3, "kf":Ljavafx/animation/KeyFrame;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 226
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->play()V

    .line 227
    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 228
    return-void
.end method

.method public decButtonReleased()V
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->stopTimeline()V

    .line 234
    return-void
.end method

.method decrementValue()V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollBar;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->adjustValue(D)V

    .line 78
    return-void
.end method

.method end()V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollBar;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 82
    return-void
.end method

.method home()V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollBar;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 74
    return-void
.end method

.method public incButtonPressed()V
    .locals 10

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ScrollBar;

    move-object v1, v4

    .line 242
    .local v1, "bar":Ljavafx/scene/control/ScrollBar;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->isFocusTraversable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ScrollBar;->requestFocus()V

    .line 243
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->stopTimeline()V

    .line 244
    move-object v4, v0

    new-instance v5, Ljavafx/animation/Timeline;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    .line 245
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 247
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;Ljavafx/scene/control/ScrollBar;)Ljavafx/event/EventHandler;

    move-result-object v4

    move-object v2, v4

    .line 257
    .local v2, "inc":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v7, v2

    const/4 v8, 0x0

    new-array v8, v8, [Ljavafx/animation/KeyValue;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v3, v4

    .line 258
    .local v3, "kf":Ljavafx/animation/KeyFrame;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 260
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->play()V

    .line 261
    move-object v4, v2

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 262
    return-void
.end method

.method public incButtonReleased()V
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->stopTimeline()V

    .line 268
    return-void
.end method

.method incrementValue()V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollBar;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/ScrollBar;->adjustValue(D)V

    .line 86
    return-void
.end method

.method protected matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 116
    .local v2, "action":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 117
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_3

    .line 118
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_1

    .line 119
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v3, v4, :cond_2

    const-string v3, "IncrementValue"

    :goto_0
    move-object v2, v3

    .line 127
    :cond_1
    :goto_1
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    return-object v0

    .line 119
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    :cond_2
    const-string v3, "DecrementValue"

    goto :goto_0

    .line 121
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    if-eq v3, v4, :cond_4

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_1

    .line 122
    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_1

    .line 123
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ScrollBar;

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollBar;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v3, v4, :cond_5

    const-string v3, "DecrementValue"

    :goto_2
    move-object v2, v3

    goto :goto_1

    :cond_5
    const-string v3, "IncrementValue"

    goto :goto_2
.end method

.method public thumbDragged(D)V
    .locals 13

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-wide v1, p1

    .local v1, "position":D
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ScrollBar;

    move-object v3, v6

    .line 283
    .local v3, "scrollbar":Ljavafx/scene/control/ScrollBar;
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->stopTimeline()V

    .line 285
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->isFocused()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->isFocusTraversable()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/ScrollBar;->requestFocus()V

    .line 286
    :cond_0
    move-wide v6, v1

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v4, v6

    .line 287
    .local v4, "newValue":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_1

    .line 288
    move-object v6, v3

    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v7

    move-wide v9, v4

    move-object v11, v3

    invoke-virtual {v11}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 290
    :cond_1
    return-void
.end method

.method public trackPress(D)V
    .locals 19

    .prologue
    .line 165
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-wide/from16 v2, p1

    .local v2, "position":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    if-eqz v10, :cond_0

    .line 194
    :goto_0
    return-void

    .line 169
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/ScrollBar;

    move-object v4, v10

    .line 170
    .local v4, "bar":Ljavafx/scene/control/ScrollBar;
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->isFocused()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->isFocusTraversable()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/ScrollBar;->requestFocus()V

    .line 171
    :cond_1
    move-wide v10, v2

    move-wide v5, v10

    .line 172
    .local v5, "pos":D
    move-wide v10, v5

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v12

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v14

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v16

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    cmpl-double v10, v10, v12

    if-lez v10, :cond_2

    const/4 v10, 0x1

    :goto_1
    move v7, v10

    .line 173
    .local v7, "incrementing":Z
    move-object v10, v1

    new-instance v11, Ljavafx/animation/Timeline;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v11, v10, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    .line 174
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 176
    move-object v10, v1

    move-wide v11, v5

    move-object v13, v4

    move v14, v7

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;DLjavafx/scene/control/ScrollBar;Z)Ljavafx/event/EventHandler;

    move-result-object v10

    move-object v8, v10

    .line 189
    .local v8, "step":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    new-instance v10, Ljavafx/animation/KeyFrame;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-wide/high16 v12, 0x4069000000000000L    # 200.0

    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    move-object v13, v8

    const/4 v14, 0x0

    new-array v14, v14, [Ljavafx/animation/KeyValue;

    invoke-direct {v11, v12, v13, v14}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v9, v10

    .line 190
    .local v9, "kf":Ljavafx/animation/KeyFrame;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v10}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v11, v9

    invoke-interface {v10, v11}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 192
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v10}, Ljavafx/animation/Timeline;->play()V

    .line 193
    move-object v10, v8

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 194
    goto/16 :goto_0

    .line 172
    .end local v7    # "incrementing":Z
    .end local v8    # "step":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    .end local v9    # "kf":Ljavafx/animation/KeyFrame;
    :cond_2
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public trackRelease()V
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/behavior/ScrollBarBehavior;->stopTimeline()V

    .line 200
    return-void
.end method
