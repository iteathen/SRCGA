.class public abstract Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.super Ljavafx/scene/control/SkinBase;
.source "BehaviorSkinBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljavafx/scene/control/Control;",
        "BB:",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<TC;>;>",
        "Ljavafx/scene/control/SkinBase",
        "<TC;>;"
    }
.end annotation


# static fields
.field protected static final IS_TOUCH_SUPPORTED:Z


# instance fields
.field private behavior:Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TBB;"
        }
    .end annotation
.end field

.field private changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

.field private final contextMenuHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mouseHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    invoke-static {v0}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    return-void
.end method

.method protected constructor <init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TBB;)V"
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase<TC;TBB;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/Control;, "TC;"
    move-object v2, p2

    .local v2, "behavior":Lcom/sun/javafx/scene/control/behavior/BehaviorBase;, "TBB;"
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/SkinBase;-><init>(Ljavafx/scene/control/Control;)V

    .line 88
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$1;-><init>(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    .line 104
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$2;-><init>(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->contextMenuHandler:Ljavafx/event/EventHandler;

    .line 126
    move-object v3, v2

    if-nez v3, :cond_0

    .line 127
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "Cannot pass null for behavior"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->behavior:Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    .line 135
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 136
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 137
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 138
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 139
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 141
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/ContextMenuEvent;->CONTEXT_MENU_REQUESTED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->contextMenuHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->behavior:Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->lambda$registerChangeListener$61(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private synthetic lambda$registerChangeListener$61(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase<TC;TBB;>;"
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 198
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase<TC;TBB;>;"
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase<TC;TBB;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    if-eqz v2, :cond_0

    .line 161
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->dispose()V

    .line 164
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    move-object v1, v2

    .line 165
    .local v1, "control":Ljavafx/scene/control/Control;, "TC;"
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 166
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Control;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 167
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Control;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 168
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Control;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 169
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Control;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 170
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->mouseHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Control;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 173
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->behavior:Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    if-eqz v2, :cond_2

    .line 174
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->behavior:Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;->dispose()V

    .line 175
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->behavior:Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    .line 178
    :cond_2
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/SkinBase;->dispose()V

    .line 179
    return-void
.end method

.method public final getBehavior()Lcom/sun/javafx/scene/control/behavior/BehaviorBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBB;"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase<TC;TBB;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->behavior:Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase<TC;TBB;>;"
    return-object v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyReference"    # Ljava/lang/String;

    .prologue
    .line 210
    .local p0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase<TC;TBB;>;"
    return-void
.end method

.method protected final registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;, "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase<TC;TBB;>;"
    move-object v1, p1

    .local v1, "property":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v2, p2

    .local v2, "reference":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    if-nez v3, :cond_0

    .line 196
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;)Ljavafx/util/Callback;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;-><init>(Ljavafx/util/Callback;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    .line 201
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->changeListenerHandler:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 202
    return-void
.end method
