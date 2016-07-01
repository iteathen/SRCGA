.class public abstract Ljavafx/beans/property/MapPropertyBase;
.super Ljavafx/beans/property/MapProperty;
.source "MapPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/property/MapPropertyBase$Listener;,
        Ljavafx/beans/property/MapPropertyBase$EmptyProperty;,
        Ljavafx/beans/property/MapPropertyBase$SizeProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/MapProperty",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private empty0:Ljavafx/beans/property/MapPropertyBase$EmptyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/MapPropertyBase",
            "<TK;TV;>.EmptyProperty;"
        }
    .end annotation
.end field

.field private helper:Lcom/sun/javafx/binding/MapExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private listener:Ljavafx/beans/InvalidationListener;

.field private final mapChangeListener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private observable:Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private size0:Ljavafx/beans/property/MapPropertyBase$SizeProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/MapPropertyBase",
            "<TK;TV;>.SizeProperty;"
        }
    .end annotation
.end field

.field private valid:Z

.field private value:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/MapProperty;-><init>()V

    .line 53
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/beans/property/MapPropertyBase$$Lambda$1;->lambdaFactory$(Ljavafx/beans/property/MapPropertyBase;)Ljavafx/collections/MapChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/beans/property/MapPropertyBase;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    .line 60
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 61
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/MapPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 62
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/MapPropertyBase;->valid:Z

    .line 63
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "initialValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/MapProperty;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Ljavafx/beans/property/MapPropertyBase$$Lambda$2;->lambdaFactory$(Ljavafx/beans/property/MapPropertyBase;)Ljavafx/collections/MapChangeListener;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 61
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 62
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/beans/property/MapPropertyBase;->valid:Z

    .line 63
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 80
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    .line 81
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic access$200(Ljavafx/beans/property/MapPropertyBase;)Ljavafx/collections/ObservableMap;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/MapPropertyBase;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/beans/property/MapPropertyBase;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/beans/property/MapPropertyBase;Ljavafx/collections/ObservableMap;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/property/MapPropertyBase;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ObservableMap;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/MapPropertyBase;->markInvalid(Ljavafx/collections/ObservableMap;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/beans/property/MapPropertyBase;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/MapPropertyBase;->lambda$new$28(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/beans/property/MapPropertyBase;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/MapPropertyBase;->lambda$new$28(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method private invalidateProperties()V
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->size0:Ljavafx/beans/property/MapPropertyBase$SizeProperty;

    if-eqz v1, :cond_0

    .line 207
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->size0:Ljavafx/beans/property/MapPropertyBase$SizeProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/MapPropertyBase$SizeProperty;->fireValueChangedEvent()V

    .line 209
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->empty0:Ljavafx/beans/property/MapPropertyBase$EmptyProperty;

    if-eqz v1, :cond_1

    .line 210
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->empty0:Ljavafx/beans/property/MapPropertyBase$EmptyProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/MapPropertyBase$EmptyProperty;->fireValueChangedEvent()V

    .line 212
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$28(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/MapPropertyBase;->invalidateProperties()V

    .line 55
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/MapPropertyBase;->invalidated()V

    .line 56
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/MapPropertyBase;->fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V

    .line 57
    return-void
.end method

.method private markInvalid(Ljavafx/collections/ObservableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "oldValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/beans/property/MapPropertyBase;->valid:Z

    if-eqz v2, :cond_1

    .line 216
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 217
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 219
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/beans/property/MapPropertyBase;->valid:Z

    .line 220
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/MapPropertyBase;->invalidateProperties()V

    .line 221
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/MapPropertyBase;->invalidated()V

    .line 222
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/MapPropertyBase;->fireValueChangedEvent()V

    .line 224
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 150
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 160
    return-void
.end method

.method public addListener(Ljavafx/collections/MapChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 170
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "newObservable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 271
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Cannot bind to null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 273
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 274
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/property/MapPropertyBase;->unbind()V

    .line 275
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 276
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/MapPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    if-nez v2, :cond_1

    .line 277
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/MapPropertyBase$Listener;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/beans/property/MapPropertyBase$Listener;-><init>(Ljavafx/beans/property/MapPropertyBase;)V

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    .line 279
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v2, v3}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 280
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    invoke-direct {v2, v3}, Ljavafx/beans/property/MapPropertyBase;->markInvalid(Ljavafx/collections/ObservableMap;)V

    .line 282
    :cond_2
    return-void
.end method

.method public emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->empty0:Ljavafx/beans/property/MapPropertyBase$EmptyProperty;

    if-nez v1, :cond_0

    .line 119
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/MapPropertyBase$EmptyProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/MapPropertyBase$EmptyProperty;-><init>(Ljavafx/beans/property/MapPropertyBase;Ljavafx/beans/property/MapPropertyBase$1;)V

    iput-object v2, v1, Ljavafx/beans/property/MapPropertyBase;->empty0:Ljavafx/beans/property/MapPropertyBase$EmptyProperty;

    .line 121
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->empty0:Ljavafx/beans/property/MapPropertyBase$EmptyProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    return-object v0
.end method

.method protected fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;)V

    .line 189
    return-void
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener$Change;)V

    .line 203
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/MapPropertyBase;->get()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    return-object v0
.end method

.method public get()Ljavafx/collections/ObservableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/property/MapPropertyBase;->valid:Z

    if-nez v1, :cond_0

    .line 241
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-nez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    :goto_0
    iput-object v2, v1, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    .line 242
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/property/MapPropertyBase;->valid:Z

    .line 243
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    if-eqz v1, :cond_0

    .line 244
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/MapPropertyBase;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 247
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    return-object v0

    .line 241
    .restart local v0    # "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableMap;

    goto :goto_0
.end method

.method protected invalidated()V
    .locals 0

    .prologue
    .line 236
    .local p0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    return-void
.end method

.method public isBound()Z
    .locals 2

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 155
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 165
    return-void
.end method

.method public removeListener(Ljavafx/collections/MapChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/property/MapPropertyBase;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 175
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/collections/ObservableMap;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/MapPropertyBase;->set(Ljavafx/collections/ObservableMap;)V

    return-void
.end method

.method public set(Ljavafx/collections/ObservableMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, p1

    .local v1, "newValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/property/MapPropertyBase;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/beans/property/MapPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/beans/property/MapPropertyBase;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 254
    invoke-virtual {v7}, Ljavafx/beans/property/MapPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/beans/property/MapPropertyBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "A bound value cannot be set."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 256
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    move-object v4, v1

    if-eq v3, v4, :cond_2

    .line 257
    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    move-object v2, v3

    .line 258
    .local v2, "oldValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    .line 259
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/MapPropertyBase;->markInvalid(Ljavafx/collections/ObservableMap;)V

    .line 261
    .end local v2    # "oldValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    :cond_2
    return-void
.end method

.method public sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->size0:Ljavafx/beans/property/MapPropertyBase$SizeProperty;

    if-nez v1, :cond_0

    .line 89
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/MapPropertyBase$SizeProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/MapPropertyBase$SizeProperty;-><init>(Ljavafx/beans/property/MapPropertyBase;Ljavafx/beans/property/MapPropertyBase$1;)V

    iput-object v2, v1, Ljavafx/beans/property/MapPropertyBase;->size0:Ljavafx/beans/property/MapPropertyBase$SizeProperty;

    .line 91
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->size0:Ljavafx/beans/property/MapPropertyBase$SizeProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/MapPropertyBase;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 300
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/MapPropertyBase;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 301
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "MapProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 302
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 303
    move-object v4, v3

    const-string v5, "bean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 305
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 306
    move-object v4, v3

    const-string v5, "name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 308
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/MapPropertyBase;->isBound()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 309
    move-object v4, v3

    const-string v5, "bound, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/beans/property/MapPropertyBase;->valid:Z

    if-eqz v4, :cond_2

    .line 311
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/MapPropertyBase;->get()Ljavafx/collections/ObservableMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    :goto_0
    move-object v4, v3

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    return-object v0

    .line 313
    .restart local v0    # "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    :cond_2
    move-object v4, v3

    const-string v5, "invalid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    .line 316
    :cond_3
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/MapPropertyBase;->get()Ljavafx/collections/ObservableMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapPropertyBase;, "Ljavafx/beans/property/MapPropertyBase<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    if-eqz v1, :cond_0

    .line 287
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableMap;

    iput-object v2, v1, Ljavafx/beans/property/MapPropertyBase;->value:Ljavafx/collections/ObservableMap;

    .line 288
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/MapPropertyBase;->listener:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 289
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/property/MapPropertyBase;->observable:Ljavafx/beans/value/ObservableValue;

    .line 291
    :cond_0
    return-void
.end method
