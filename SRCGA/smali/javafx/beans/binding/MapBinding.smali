.class public abstract Ljavafx/beans/binding/MapBinding;
.super Ljavafx/beans/binding/MapExpression;
.source "MapBinding.java"

# interfaces
.implements Ljavafx/beans/binding/Binding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/binding/MapBinding$EmptyProperty;,
        Ljavafx/beans/binding/MapBinding$SizeProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/binding/MapExpression",
        "<TK;TV;>;",
        "Ljavafx/beans/binding/Binding",
        "<",
        "Ljavafx/collections/ObservableMap",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private empty0:Ljavafx/beans/binding/MapBinding$EmptyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/MapBinding",
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

.field private final mapChangeListener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private observer:Lcom/sun/javafx/binding/BindingHelperObserver;

.field private size0:Ljavafx/beans/binding/MapBinding$SizeProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/MapBinding",
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
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/MapExpression;-><init>()V

    .line 71
    move-object v1, v0

    new-instance v2, Ljavafx/beans/binding/MapBinding$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/beans/binding/MapBinding$1;-><init>(Ljavafx/beans/binding/MapBinding;)V

    iput-object v2, v1, Ljavafx/beans/binding/MapBinding;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    .line 81
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/MapBinding;->valid:Z

    .line 83
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    return-void
.end method

.method static synthetic access$000(Ljavafx/beans/binding/MapBinding;)V
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/binding/MapBinding;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/MapBinding;->invalidateProperties()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/beans/binding/MapBinding;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/binding/MapBinding;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/beans/binding/MapBinding;
    return-object v0
.end method

.method private invalidateProperties()V
    .locals 2

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->size0:Ljavafx/beans/binding/MapBinding$SizeProperty;

    if-eqz v1, :cond_0

    .line 263
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->size0:Ljavafx/beans/binding/MapBinding$SizeProperty;

    invoke-virtual {v1}, Ljavafx/beans/binding/MapBinding$SizeProperty;->fireValueChangedEvent()V

    .line 265
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->empty0:Ljavafx/beans/binding/MapBinding$EmptyProperty;

    if-eqz v1, :cond_1

    .line 266
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->empty0:Ljavafx/beans/binding/MapBinding$EmptyProperty;

    invoke-virtual {v1}, Ljavafx/beans/binding/MapBinding$EmptyProperty;->fireValueChangedEvent()V

    .line 268
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

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

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

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

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;->addListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 170
    return-void
.end method

.method protected final varargs bind([Ljavafx/beans/Observable;)V
    .locals 11

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_2

    .line 186
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/MapBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-nez v6, :cond_0

    .line 187
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/binding/BindingHelperObserver;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/binding/BindingHelperObserver;-><init>(Ljavafx/beans/binding/Binding;)V

    iput-object v7, v6, Ljavafx/beans/binding/MapBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 189
    :cond_0
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 190
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 191
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/MapBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 189
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 195
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_2
    return-void
.end method

.method protected abstract computeValue()Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 219
    .local p0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return-void
.end method

.method public emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->empty0:Ljavafx/beans/binding/MapBinding$EmptyProperty;

    if-nez v1, :cond_0

    .line 120
    move-object v1, v0

    new-instance v2, Ljavafx/beans/binding/MapBinding$EmptyProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/MapBinding$EmptyProperty;-><init>(Ljavafx/beans/binding/MapBinding;Ljavafx/beans/binding/MapBinding$1;)V

    iput-object v2, v1, Ljavafx/beans/binding/MapBinding;->empty0:Ljavafx/beans/binding/MapBinding$EmptyProperty;

    .line 122
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->empty0:Ljavafx/beans/binding/MapBinding$EmptyProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/MapBinding;->get()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return-object v0
.end method

.method public final get()Ljavafx/collections/ObservableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/MapBinding;->valid:Z

    if-nez v1, :cond_0

    .line 244
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/MapBinding;->computeValue()Ljavafx/collections/ObservableMap;

    move-result-object v2

    iput-object v2, v1, Ljavafx/beans/binding/MapBinding;->value:Ljavafx/collections/ObservableMap;

    .line 245
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/binding/MapBinding;->valid:Z

    .line 246
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->value:Ljavafx/collections/ObservableMap;

    if-eqz v1, :cond_0

    .line 247
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->value:Ljavafx/collections/ObservableMap;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/MapBinding;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 250
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->value:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return-object v0
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/binding/MapExpression;->getValue()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return-object v0
.end method

.method public final invalidate()V
    .locals 3

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/MapBinding;->valid:Z

    if-eqz v1, :cond_1

    .line 273
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->value:Ljavafx/collections/ObservableMap;

    if-eqz v1, :cond_0

    .line 274
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->value:Ljavafx/collections/ObservableMap;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/MapBinding;->mapChangeListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 276
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/MapBinding;->valid:Z

    .line 277
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/MapBinding;->invalidateProperties()V

    .line 278
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/MapBinding;->onInvalidating()V

    .line 279
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/MapExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/MapExpressionHelper;)V

    .line 281
    :cond_1
    return-void
.end method

.method public final isValid()Z
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/MapBinding;->valid:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return v0
.end method

.method protected onInvalidating()V
    .locals 0

    .prologue
    .line 259
    .local p0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

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

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

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

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper;->removeListener(Lcom/sun/javafx/binding/MapExpressionHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/MapBinding;->helper:Lcom/sun/javafx/binding/MapExpressionHelper;

    .line 175
    return-void
.end method

.method public sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->size0:Ljavafx/beans/binding/MapBinding$SizeProperty;

    if-nez v1, :cond_0

    .line 91
    move-object v1, v0

    new-instance v2, Ljavafx/beans/binding/MapBinding$SizeProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/MapBinding$SizeProperty;-><init>(Ljavafx/beans/binding/MapBinding;Ljavafx/beans/binding/MapBinding$1;)V

    iput-object v2, v1, Ljavafx/beans/binding/MapBinding;->size0:Ljavafx/beans/binding/MapBinding$SizeProperty;

    .line 93
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/MapBinding;->size0:Ljavafx/beans/binding/MapBinding$SizeProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/MapBinding;->valid:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MapBinding [value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/MapBinding;->get()Ljavafx/collections/ObservableMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    :cond_0
    const-string v1, "MapBinding [invalid]"

    goto :goto_0
.end method

.method protected final varargs unbind([Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapBinding;, "Ljavafx/beans/binding/MapBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/MapBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-eqz v6, :cond_2

    .line 205
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 206
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 207
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/MapBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 205
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/beans/binding/MapBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 212
    :cond_2
    return-void
.end method
