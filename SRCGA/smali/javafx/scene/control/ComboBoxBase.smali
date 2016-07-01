.class public abstract Ljavafx/scene/control/ComboBoxBase;
.super Ljavafx/scene/control/Control;
.source "ComboBoxBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/Control;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "combo-box-base"

.field public static final ON_HIDDEN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_HIDING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SHOWING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SHOWN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final PSEUDO_CLASS_ARMED:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_EDITABLE:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_SHOWING:Ljavafx/css/PseudoClass;


# instance fields
.field private armed:Ljavafx/beans/property/BooleanProperty;

.field private editable:Ljavafx/beans/property/BooleanProperty;

.field private onAction:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onHidden:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private onHiding:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private onShowing:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private onShown:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private promptText:Ljavafx/beans/property/StringProperty;

.field private showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private value:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 85
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "COMBO_BOX_BASE_ON_SHOWING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ComboBoxBase;->ON_SHOWING:Ljavafx/event/EventType;

    .line 92
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "COMBO_BOX_BASE_ON_SHOWN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ComboBoxBase;->ON_SHOWN:Ljavafx/event/EventType;

    .line 99
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "COMBO_BOX_BASE_ON_HIDING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ComboBoxBase;->ON_HIDING:Ljavafx/event/EventType;

    .line 106
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "COMBO_BOX_BASE_ON_HIDDEN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/ComboBoxBase;->ON_HIDDEN:Ljavafx/event/EventType;

    .line 440
    const-string v0, "editable"

    .line 441
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ComboBoxBase;->PSEUDO_CLASS_EDITABLE:Ljavafx/css/PseudoClass;

    .line 442
    const-string v0, "showing"

    .line 443
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ComboBoxBase;->PSEUDO_CLASS_SHOWING:Ljavafx/css/PseudoClass;

    .line 444
    const-string v0, "armed"

    .line 445
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ComboBoxBase;->PSEUDO_CLASS_ARMED:Ljavafx/css/PseudoClass;

    .line 444
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;-><init>()V

    .line 148
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "value"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->value:Ljavafx/beans/property/ObjectProperty;

    .line 166
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ComboBoxBase$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "editable"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/ComboBoxBase$1;-><init>(Ljavafx/scene/control/ComboBoxBase;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 221
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ComboBoxBase$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "promptText"

    const-string v7, ""

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/ComboBoxBase$3;-><init>(Ljavafx/scene/control/ComboBoxBase;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->promptText:Ljavafx/beans/property/StringProperty;

    .line 248
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ComboBoxBase$4;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "armed"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/ComboBoxBase$4;-><init>(Ljavafx/scene/control/ComboBoxBase;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->armed:Ljavafx/beans/property/BooleanProperty;

    .line 268
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ComboBoxBase$5;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ComboBoxBase$5;-><init>(Ljavafx/scene/control/ComboBoxBase;)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->onAction:Ljavafx/beans/property/ObjectProperty;

    .line 293
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ComboBoxBase$6;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ComboBoxBase$6;-><init>(Ljavafx/scene/control/ComboBoxBase;)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->onShowing:Ljavafx/beans/property/ObjectProperty;

    .line 316
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ComboBoxBase$7;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ComboBoxBase$7;-><init>(Ljavafx/scene/control/ComboBoxBase;)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->onShown:Ljavafx/beans/property/ObjectProperty;

    .line 339
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ComboBoxBase$8;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ComboBoxBase$8;-><init>(Ljavafx/scene/control/ComboBoxBase;)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->onHiding:Ljavafx/beans/property/ObjectProperty;

    .line 362
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ComboBoxBase$9;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ComboBoxBase$9;-><init>(Ljavafx/scene/control/ComboBoxBase;)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->onHidden:Ljavafx/beans/property/ObjectProperty;

    .line 121
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "combo-box-base"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 124
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/ComboBoxBase$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/ComboBoxBase;)Ljavafx/collections/MapChangeListener;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 133
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Ljavafx/scene/control/ComboBoxBase;->PSEUDO_CLASS_EDITABLE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Ljavafx/scene/control/ComboBoxBase;->PSEUDO_CLASS_SHOWING:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Ljavafx/scene/control/ComboBoxBase;->PSEUDO_CLASS_ARMED:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/ComboBoxBase;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBoxBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/control/ComboBoxBase;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBoxBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/control/ComboBoxBase;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBoxBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/control/ComboBoxBase;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBoxBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/control/ComboBoxBase;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ComboBoxBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ComboBoxBase;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/ComboBoxBase;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ComboBoxBase;->lambda$new$151(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$151(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "FOCUSED"

    if-ne v2, v3, :cond_0

    .line 127
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ComboBoxBase;->setFocused(Z)V

    .line 128
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 131
    :cond_0
    return-void
.end method

.method private final setArmed(Z)V
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->armedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method private setShowing(Z)V
    .locals 7

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_SHOWING:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    :goto_0
    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 185
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ComboBoxBase;->showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 186
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_SHOWN:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    :goto_1
    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 188
    return-void

    .line 183
    :cond_0
    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_HIDING:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    goto :goto_0

    .line 186
    :cond_1
    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_HIDDEN:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    goto :goto_1
.end method

.method private showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 7

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 191
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ComboBoxBase$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ComboBoxBase$2;-><init>(Ljavafx/scene/control/ComboBoxBase;Z)V

    iput-object v2, v1, Ljavafx/scene/control/ComboBoxBase;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 208
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method


# virtual methods
.method public arm()V
    .locals 3

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->armedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/ComboBoxBase;->setArmed(Z)V

    .line 416
    :cond_0
    return-void
.end method

.method public armedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->armed:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public disarm()V
    .locals 3

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->armedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/ComboBoxBase;->setArmed(Z)V

    .line 429
    :cond_0
    return-void
.end method

.method public editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/ComboBoxBase$10;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 468
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/Control;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 470
    :goto_0
    return-void

    .line 466
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->show()V

    goto :goto_0

    .line 467
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->hide()V

    goto :goto_0

    .line 465
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getOnAction()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final getOnHidden()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->onHiddenProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final getOnHiding()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->onHidingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final getOnShowing()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->onShowingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final getOnShown()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->onShownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final getPromptText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->promptText:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/ComboBoxBase;->setShowing(Z)V

    .line 402
    :cond_0
    return-void
.end method

.method public final isArmed()Z
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->armedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return v0
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return v0
.end method

.method public final isShowing()Z
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ComboBoxBase;->showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return v0
.end method

.method public final onActionProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->onAction:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final onHiddenProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->onHidden:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final onHidingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->onHiding:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final onShowingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->onShowing:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final onShownProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->onShown:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public final promptTextProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->promptText:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/ComboBoxBase$10;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 459
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    :goto_0
    return-object v0

    .line 457
    .restart local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->isShowing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 458
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBoxBase;->isEditable()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setOnAction(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->onActionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnHidden(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->onHiddenProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnHiding(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->onHidingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShowing(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->onShowingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setOnShown(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->onShownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPromptText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ComboBoxBase;->promptText:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ComboBoxBase;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 390
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ComboBoxBase;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/ComboBoxBase;->setShowing(Z)V

    .line 393
    :cond_0
    return-void
.end method

.method public showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ComboBoxBase;->showingPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method

.method public valueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ComboBoxBase;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ComboBoxBase;, "Ljavafx/scene/control/ComboBoxBase<TT;>;"
    return-object v0
.end method
