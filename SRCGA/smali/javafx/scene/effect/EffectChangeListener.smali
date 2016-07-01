.class abstract Ljavafx/scene/effect/EffectChangeListener;
.super Lcom/sun/javafx/beans/event/AbstractNotifyListener;
.source "EffectChangeListener.java"


# instance fields
.field protected registredOn:Ljavafx/beans/value/ObservableValue;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/EffectChangeListener;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/beans/event/AbstractNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public register(Ljavafx/beans/value/ObservableValue;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/EffectChangeListener;
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/value/ObservableValue;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/EffectChangeListener;->registredOn:Ljavafx/beans/value/ObservableValue;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 37
    .line 46
    :goto_0
    return-void

    .line 39
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/EffectChangeListener;->registredOn:Ljavafx/beans/value/ObservableValue;

    if-eqz v2, :cond_1

    .line 40
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/EffectChangeListener;->registredOn:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/EffectChangeListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 42
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/effect/EffectChangeListener;->registredOn:Ljavafx/beans/value/ObservableValue;

    .line 43
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/EffectChangeListener;->registredOn:Ljavafx/beans/value/ObservableValue;

    if-eqz v2, :cond_2

    .line 44
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/EffectChangeListener;->registredOn:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/EffectChangeListener;->getWeakListener()Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 46
    :cond_2
    goto :goto_0
.end method
