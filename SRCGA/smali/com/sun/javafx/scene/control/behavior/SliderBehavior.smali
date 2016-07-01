.class public Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "SliderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/Slider;",
        ">;"
    }
.end annotation


# static fields
.field protected static final SLIDER_BINDINGS:Ljava/util/List;
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
.field private tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    .line 62
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

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

    .line 64
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "DecrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "DecrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "IncrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "IncrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "IncrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "IncrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "DecrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Ljavafx/scene/input/KeyCode;->KP_DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "DecrementValue"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior$SliderKeyBinding;->vertical()Lcom/sun/javafx/scene/control/behavior/OrientedKeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

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

    .line 74
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

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

    .line 75
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Slider;)V
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v1, p1

    .local v1, "slider":Ljavafx/scene/control/Slider;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->SLIDER_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 107
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;-><init>(Ljavafx/scene/Node;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    .line 110
    :cond_0
    return-void
.end method

.method private snapValueToTicks(D)D
    .locals 23

    .prologue
    .line 163
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-wide/from16 v4, p1

    .local v4, "val":D
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v16

    check-cast v16, Ljavafx/scene/control/Slider;

    move-object/from16 v6, v16

    .line 164
    .local v6, "slider":Ljavafx/scene/control/Slider;
    move-wide/from16 v16, v4

    move-wide/from16 v7, v16

    .line 165
    .local v7, "v":D
    const-wide/16 v16, 0x0

    move-wide/from16 v9, v16

    .line 167
    .local v9, "tickSpacing":D
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Slider;->getMinorTickCount()I

    move-result v16

    if-eqz v16, :cond_0

    .line 168
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Slider;->getMajorTickUnit()D

    move-result-wide v16

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/Slider;->getMinorTickCount()I

    move-result v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v9, v16

    .line 172
    :goto_0
    move-wide/from16 v16, v7

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v18

    sub-double v16, v16, v18

    move-wide/from16 v18, v9

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v11, v16

    .line 173
    .local v11, "prevTick":I
    move/from16 v16, v11

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v9

    mul-double v16, v16, v18

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 174
    .local v12, "prevTickValue":D
    move/from16 v16, v11

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v9

    mul-double v16, v16, v18

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 175
    .local v14, "nextTickValue":D
    move-wide/from16 v16, v12

    move-wide/from16 v18, v7

    move-wide/from16 v20, v14

    invoke-static/range {v16 .. v21}, Lcom/sun/javafx/util/Utils;->nearest(DDD)D

    move-result-wide v16

    move-wide/from16 v7, v16

    .line 176
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v16

    move-wide/from16 v18, v7

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v20

    invoke-static/range {v16 .. v21}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v16

    move-wide/from16 v3, v16

    .end local v3    # "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    return-wide v3

    .line 170
    .end local v11    # "prevTick":I
    .end local v12    # "prevTickValue":D
    .end local v14    # "nextTickValue":D
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    :cond_0
    move-object/from16 v16, v6

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Slider;->getMajorTickUnit()D

    move-result-wide v16

    move-wide/from16 v9, v16

    goto :goto_0
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    const-string v2, "Home"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->home()V

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    const-string v2, "End"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->end()V

    goto :goto_0

    .line 97
    :cond_1
    const-string v2, "IncrementValue"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->incrementValue()V

    goto :goto_0

    .line 98
    :cond_2
    const-string v2, "DecrementValue"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->decrementValue()V

    goto :goto_0

    .line 99
    :cond_3
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method computeIncrement()D
    .locals 8

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Slider;

    move-object v1, v4

    .line 229
    .local v1, "slider":Ljavafx/scene/control/Slider;
    const-wide/16 v4, 0x0

    move-wide v2, v4

    .line 230
    .local v2, "tickSpacing":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMinorTickCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMajorTickUnit()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getMinorTickCount()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    div-double/2addr v4, v6

    move-wide v2, v4

    .line 236
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getBlockIncrement()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getBlockIncrement()D

    move-result-wide v4

    move-wide v6, v2

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 237
    move-wide v4, v2

    move-wide v0, v4

    .line 240
    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    :goto_1
    return-wide v0

    .line 233
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMajorTickUnit()D

    move-result-wide v4

    move-wide v2, v4

    goto :goto_0

    .line 240
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getBlockIncrement()D

    move-result-wide v4

    move-wide v0, v4

    goto :goto_1
.end method

.method decrementValue()V
    .locals 8

    .prologue
    .line 199
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    move-object v2, v3

    .line 202
    .local v2, "slider":Ljavafx/scene/control/Slider;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->isSnapToTicks()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->computeIncrement()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Slider;->adjustValue(D)V

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->decrement()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->dispose()V

    .line 114
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->dispose()V

    .line 115
    return-void
.end method

.method end()V
    .locals 6

    .prologue
    .line 211
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    move-object v2, v3

    .line 212
    .local v2, "slider":Ljavafx/scene/control/Slider;
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Slider;->adjustValue(D)V

    .line 213
    return-void
.end method

.method home()V
    .locals 6

    .prologue
    .line 194
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    move-object v2, v3

    .line 195
    .local v2, "slider":Ljavafx/scene/control/Slider;
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Slider;->adjustValue(D)V

    .line 196
    return-void
.end method

.method incrementValue()V
    .locals 8

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    move-object v2, v3

    .line 219
    .local v2, "slider":Ljavafx/scene/control/Slider;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->isSnapToTicks()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->computeIncrement()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Slider;->adjustValue(D)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->increment()V

    goto :goto_0
.end method

.method protected matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 79
    .local v2, "action":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 80
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

    .line 81
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_1

    .line 82
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v3, v4, :cond_2

    const-string v3, "IncrementValue"

    :goto_0
    move-object v2, v3

    .line 90
    :cond_1
    :goto_1
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    return-object v0

    .line 82
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    :cond_2
    const-string v3, "DecrementValue"

    goto :goto_0

    .line 84
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

    .line 85
    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v3

    sget-object v4, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v3, v4, :cond_1

    .line 86
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

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

.method public thumbDragged(Ljavafx/scene/input/MouseEvent;D)V
    .locals 14

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-wide/from16 v2, p2

    .local v2, "position":D
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Slider;

    move-object v4, v5

    .line 159
    .local v4, "slider":Ljavafx/scene/control/Slider;
    move-object v5, v4

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v6

    move-wide v8, v2

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v10

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v10

    add-double/2addr v8, v10

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v10

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->setValue(D)V

    .line 160
    return-void
.end method

.method public thumbPressed(Ljavafx/scene/input/MouseEvent;D)V
    .locals 8

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-wide v2, p2

    .local v2, "position":D
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Slider;

    move-object v4, v5

    .line 149
    .local v4, "slider":Ljavafx/scene/control/Slider;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->requestFocus()V

    .line 150
    :cond_0
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Slider;->setValueChanging(Z)V

    .line 151
    return-void
.end method

.method public thumbReleased(Ljavafx/scene/input/MouseEvent;)V
    .locals 7

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Slider;

    move-object v2, v3

    .line 185
    .local v2, "slider":Ljavafx/scene/control/Slider;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Slider;->setValueChanging(Z)V

    .line 188
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->isSnapToTicks()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    move-object v3, v2

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->snapValueToTicks(D)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Slider;->setValue(D)V

    .line 191
    :cond_0
    return-void
.end method

.method public trackPress(Ljavafx/scene/input/MouseEvent;D)V
    .locals 12

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SliderBehavior;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-wide v2, p2

    .local v2, "position":D
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/SliderBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Slider;

    move-object v4, v5

    .line 134
    .local v4, "slider":Ljavafx/scene/control/Slider;
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->requestFocus()V

    .line 135
    :cond_0
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v5

    sget-object v6, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-virtual {v5, v6}, Ljavafx/geometry/Orientation;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    move-object v5, v4

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v8

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->adjustValue(D)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_1
    move-object v5, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v8, v2

    sub-double/2addr v6, v8

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v8

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v10

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->adjustValue(D)V

    goto :goto_0
.end method
