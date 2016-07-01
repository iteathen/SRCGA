.class public Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
.super Ljava/lang/Object;
.source "BehaviorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/Control;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final IS_TOUCH_SUPPORTED:Z

.field protected static final TRAVERSAL_BINDINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field

.field static final TRAVERSE_DOWN:Ljava/lang/String; = "TraverseDown"

.field static final TRAVERSE_LEFT:Ljava/lang/String; = "TraverseLeft"

.field static final TRAVERSE_NEXT:Ljava/lang/String; = "TraverseNext"

.field static final TRAVERSE_PREVIOUS:Ljava/lang/String; = "TraversePrevious"

.field static final TRAVERSE_RIGHT:Ljava/lang/String; = "TraverseRight"

.field static final TRAVERSE_UP:Ljava/lang/String; = "TraverseUp"


# instance fields
.field private final control:Ljavafx/scene/control/Control;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final focusListener:Ljavafx/beans/InvalidationListener;

.field private final keyBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final keyEventListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 79
    sget-object v0, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->IS_TOUCH_SUPPORTED:Z

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    .line 103
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 104
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseLeft"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 106
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseRight"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 107
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseNext"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraversePrevious"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 110
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->UP:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseUp"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->DOWN:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseDown"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 112
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->LEFT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseLeft"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 113
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->RIGHT:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseRight"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 114
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraverseNext"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->shift()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 115
    sget-object v0, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->TRAVERSAL_BINDINGS:Ljava/util/List;

    new-instance v1, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const-string v4, "TraversePrevious"

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;-><init>(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->alt()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->ctrl()Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/Control;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/behavior/KeyBinding;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;, "TC;"
    move-object v2, p2

    .local v2, "keyBindings":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/behavior/KeyBinding;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 132
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)Ljavafx/event/EventHandler;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->keyEventListener:Ljavafx/event/EventHandler;

    .line 141
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->focusListener:Ljavafx/beans/InvalidationListener;

    .line 156
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    .line 157
    move-object v3, v0

    move-object v4, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 158
    :goto_0
    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->keyBindings:Ljava/util/List;

    .line 159
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 160
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->focusListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 161
    return-void

    .line 157
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/BehaviorBase;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->lambda$new$74(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/BehaviorBase;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->lambda$new$75(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$74(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callActionForEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 136
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$75(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "property":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->focusChanged()V

    .line 143
    return-void
.end method


# virtual methods
.method protected callAction(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v4, v1

    move-object v2, v4

    const/4 v4, -0x1

    move v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 267
    :goto_1
    return-void

    .line 259
    :sswitch_0
    move-object v4, v2

    const-string v5, "TraverseUp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v3, v4

    goto :goto_0

    :sswitch_1
    move-object v4, v2

    const-string v5, "TraverseDown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v3, v4

    goto :goto_0

    :sswitch_2
    move-object v4, v2

    const-string v5, "TraverseLeft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    move v3, v4

    goto :goto_0

    :sswitch_3
    move-object v4, v2

    const-string v5, "TraverseRight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    move v3, v4

    goto :goto_0

    :sswitch_4
    move-object v4, v2

    const-string v5, "TraverseNext"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    move v3, v4

    goto :goto_0

    :sswitch_5
    move-object v4, v2

    const-string v5, "TraversePrevious"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    move v3, v4

    goto :goto_0

    .line 260
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverseUp()V

    goto :goto_1

    .line 261
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverseDown()V

    goto :goto_1

    .line 262
    :pswitch_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverseLeft()V

    goto :goto_1

    .line 263
    :pswitch_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverseRight()V

    goto :goto_1

    .line 264
    :pswitch_4
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverseNext()V

    goto :goto_1

    .line 265
    :pswitch_5
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traversePrevious()V

    goto :goto_1

    .line 259
    nop

    :sswitch_data_0
    .sparse-switch
        -0x60266833 -> :sswitch_0
        -0x2825e957 -> :sswitch_5
        -0x15a3ac56 -> :sswitch_3
        0xfcb2954 -> :sswitch_1
        0xfcea4b9 -> :sswitch_2
        0xfcf8fa5 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected callActionForEvent(Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 216
    .local v2, "action":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 217
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->callAction(Ljava/lang/String;)V

    .line 218
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 220
    :cond_0
    return-void
.end method

.method public contextMenuRequested(Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 0
    .param p1, "e"    # Ljavafx/scene/input/ContextMenuEvent;

    .prologue
    .line 406
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    sget-object v2, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/Control;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 172
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->focusListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 173
    return-void
.end method

.method protected focusChanged()V
    .locals 0

    .prologue
    .line 352
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    return-void
.end method

.method public final getControl()Ljavafx/scene/control/Control;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    return-object v0
.end method

.method protected matchActionForEvent(Ljavafx/scene/input/KeyEvent;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v8, v1

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/NullPointerException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "KeyEvent must not be null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 231
    :cond_0
    const/4 v8, 0x0

    move-object v2, v8

    .line 232
    .local v2, "match":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    const/4 v8, 0x0

    move v3, v8

    .line 233
    .local v3, "specificity":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->keyBindings:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v4, v8

    .line 234
    .local v4, "maxBindings":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_2

    .line 235
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->keyBindings:Ljava/util/List;

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/scene/control/behavior/KeyBinding;

    move-object v6, v8

    .line 236
    .local v6, "binding":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    move-object v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->getSpecificity(Ljavafx/scene/control/Control;Ljavafx/scene/input/KeyEvent;)I

    move-result v8

    move v7, v8

    .line 237
    .local v7, "s":I
    move v8, v7

    move v9, v3

    if-le v8, v9, :cond_1

    .line 238
    move v8, v7

    move v3, v8

    .line 239
    move-object v8, v6

    move-object v2, v8

    .line 234
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 242
    .end local v6    # "binding":Lcom/sun/javafx/scene/control/behavior/KeyBinding;
    .end local v7    # "s":I
    :cond_2
    const/4 v8, 0x0

    move-object v5, v8

    .line 243
    .local v5, "action":Ljava/lang/String;
    move-object v8, v2

    if-eqz v8, :cond_3

    .line 244
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/behavior/KeyBinding;->getAction()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 246
    :cond_3
    move-object v8, v5

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    return-object v0
.end method

.method public mouseDragged(Ljavafx/scene/input/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljavafx/scene/input/MouseEvent;

    .prologue
    .line 370
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    return-void
.end method

.method public mouseEntered(Ljavafx/scene/input/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljavafx/scene/input/MouseEvent;

    .prologue
    .line 388
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    return-void
.end method

.method public mouseExited(Ljavafx/scene/input/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljavafx/scene/input/MouseEvent;

    .prologue
    .line 397
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljavafx/scene/input/MouseEvent;

    .prologue
    .line 361
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    return-void
.end method

.method public mouseReleased(Ljavafx/scene/input/MouseEvent;)V
    .locals 0
    .param p1, "e"    # Ljavafx/scene/input/MouseEvent;

    .prologue
    .line 379
    .local p0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    return-void
.end method

.method protected traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V
    .locals 5

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v3

    .line 284
    return-void
.end method

.method public final traverseDown()V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    sget-object v3, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 300
    return-void
.end method

.method public final traverseLeft()V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    sget-object v3, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 308
    return-void
.end method

.method public final traverseNext()V
    .locals 4

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    sget-object v3, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 324
    return-void
.end method

.method public final traversePrevious()V
    .locals 4

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    sget-object v3, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 332
    return-void
.end method

.method public final traverseRight()V
    .locals 4

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    sget-object v3, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 316
    return-void
.end method

.method public final traverseUp()V
    .locals 4

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "Lcom/sun/javafx/scene/control/behavior/BehaviorBase<TC;>;"
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->control:Ljavafx/scene/control/Control;

    sget-object v3, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)V

    .line 292
    return-void
.end method
