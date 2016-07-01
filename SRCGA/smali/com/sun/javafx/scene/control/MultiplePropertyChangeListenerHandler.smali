.class public final Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
.super Ljava/lang/Object;
.source "MultiplePropertyChangeListenerHandler.java"


# instance fields
.field private final propertyChangedHandler:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyChangedListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private propertyReferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final weakPropertyChangedListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
    move-object v1, p1

    .local v1, "propertyChangedHandler":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljava/lang/String;Ljava/lang/Void;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyReferenceMap:Ljava/util/Map;

    .line 51
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler$1;-><init>(Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyChangedListener:Ljavafx/beans/value/ChangeListener;

    .line 59
    move-object v2, v0

    new-instance v3, Ljavafx/beans/value/WeakChangeListener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyChangedListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v4, v5}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->weakPropertyChangedListener:Ljavafx/beans/value/WeakChangeListener;

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyChangedHandler:Ljavafx/util/Callback;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyReferenceMap:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;)Ljavafx/util/Callback;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyChangedHandler:Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyReferenceMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/value/ObservableValue;

    move-object v2, v3

    .line 86
    .local v2, "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->weakPropertyChangedListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 87
    goto :goto_0

    .line 88
    .end local v2    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyReferenceMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 89
    return-void
.end method

.method public final registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V
    .locals 6
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
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
    move-object v1, p1

    .local v1, "property":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v2, p2

    .local v2, "reference":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyReferenceMap:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 71
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyReferenceMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 72
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->weakPropertyChangedListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 74
    :cond_0
    return-void
.end method

.method public final unregisterChangeListener(Ljavafx/beans/value/ObservableValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;
    move-object v1, p1

    .local v1, "property":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyReferenceMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->propertyReferenceMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 79
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->weakPropertyChangedListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 81
    :cond_0
    return-void
.end method
