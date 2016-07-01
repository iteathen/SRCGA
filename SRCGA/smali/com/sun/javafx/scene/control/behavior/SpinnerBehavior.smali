.class public Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;
.super Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.source "SpinnerBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/Spinner",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final INITIAL_DURATION_MS:D = 750.0

.field protected static final SPINNER_BINDINGS:Ljava/util/List;
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
.field private final STEP_AMOUNT:I

.field private isIncrementing:Z

.field private keyDown:Z

.field final spinningKeyFrameEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private timeline:Ljavafx/animation/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->SPINNER_BINDINGS:Ljava/util/List;

    .line 97
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->SPINNER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "increment-up"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 98
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->SPINNER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "increment-right"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 99
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->SPINNER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "decrement-left"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->SPINNER_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "decrement-down"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Spinner;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Spinner",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    move-object v1, p1

    .local v1, "spinner":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->SPINNER_BINDINGS:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    .line 48
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->STEP_AMOUNT:I

    .line 50
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->isIncrementing:Z

    .line 54
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->spinningKeyFrameEventHandler:Ljavafx/event/EventHandler;

    .line 77
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->lambda$new$209(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private arrowsAreVertical()Z
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Spinner;

    invoke-virtual {v2}, Ljavafx/scene/control/Spinner;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v1, v2

    .line 170
    .local v1, "styleClass":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v2, v1

    const-string v3, "arrows-on-left-horizontal"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, "arrows-on-right-horizontal"

    .line 171
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    const-string v3, "split-arrows-horizontal"

    .line 172
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$new$209(Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Spinner;

    invoke-virtual {v3}, Ljavafx/scene/control/Spinner;->getValueFactory()Ljavafx/scene/control/SpinnerValueFactory;

    move-result-object v3

    move-object v2, v3

    .line 56
    .local v2, "valueFactory":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 57
    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->isIncrementing:Z

    if-eqz v3, :cond_1

    .line 61
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->increment(I)V

    .line 65
    :goto_1
    goto :goto_0

    .line 63
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->decrement(I)V

    goto :goto_1
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->arrowsAreVertical()Z

    move-result v5

    move v2, v5

    .line 106
    .local v2, "vertical":Z
    move-object v5, v1

    move-object v3, v5

    const/4 v5, -0x1

    move v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 119
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    .line 121
    :goto_1
    return-void

    .line 106
    :sswitch_0
    move-object v5, v3

    const-string v6, "increment-up"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v4, v5

    goto :goto_0

    :sswitch_1
    move-object v5, v3

    const-string v6, "increment-right"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v4, v5

    goto :goto_0

    :sswitch_2
    move-object v5, v3

    const-string v6, "decrement-down"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    move v4, v5

    goto :goto_0

    :sswitch_3
    move-object v5, v3

    const-string v6, "decrement-left"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    move v4, v5

    goto :goto_0

    .line 108
    :pswitch_0
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->increment(I)V

    goto :goto_1

    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->traverseUp()V

    goto :goto_1

    .line 111
    :pswitch_1
    move v5, v2

    if-nez v5, :cond_2

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->increment(I)V

    goto :goto_1

    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->traverseRight()V

    goto :goto_1

    .line 114
    :pswitch_2
    move v5, v2

    if-eqz v5, :cond_3

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->decrement(I)V

    goto :goto_1

    :cond_3
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->traverseDown()V

    goto :goto_1

    .line 117
    :pswitch_3
    move v5, v2

    if-nez v5, :cond_4

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->decrement(I)V

    goto :goto_1

    :cond_4
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->traverseLeft()V

    goto :goto_1

    .line 106
    :sswitch_data_0
    .sparse-switch
        -0x62a4a264 -> :sswitch_2
        -0x62a126ff -> :sswitch_3
        -0x3f182dc2 -> :sswitch_1
        -0x2a833e47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public decrement(I)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    move v1, p1

    .local v1, "steps":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Spinner;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Spinner;->decrement(I)V

    .line 136
    return-void
.end method

.method public increment(I)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    move v1, p1

    .local v1, "steps":I
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/Spinner;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Spinner;->increment(I)V

    .line 132
    return-void
.end method

.method public startSpinning(Z)V
    .locals 10

    .prologue
    .line 139
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    move v2, p1

    .local v2, "increment":Z
    move-object v4, v1

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->isIncrementing:Z

    .line 141
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->timeline:Ljavafx/animation/Timeline;

    if-eqz v4, :cond_0

    .line 142
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->stop()V

    .line 144
    :cond_0
    move-object v4, v1

    new-instance v5, Ljavafx/animation/Timeline;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->timeline:Ljavafx/animation/Timeline;

    .line 145
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->timeline:Ljavafx/animation/Timeline;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 146
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-wide v6, 0x4087700000000000L    # 750.0

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->spinningKeyFrameEventHandler:Ljavafx/event/EventHandler;

    const/4 v8, 0x0

    new-array v8, v8, [Ljavafx/animation/KeyValue;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v3, v4

    .line 147
    .local v3, "kf":Ljavafx/animation/KeyFrame;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/animation/KeyFrame;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 148
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 149
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->play()V

    .line 150
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->spinningKeyFrameEventHandler:Ljavafx/event/EventHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 151
    return-void
.end method

.method public stopSpinning()V
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;, "Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->timeline:Ljavafx/animation/Timeline;

    if-eqz v1, :cond_0

    .line 155
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/SpinnerBehavior;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->stop()V

    .line 157
    :cond_0
    return-void
.end method
