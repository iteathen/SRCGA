.class public abstract Ljavafx/beans/binding/ListBinding;
.super Ljavafx/beans/binding/ListExpression;
.source "ListBinding.java"

# interfaces
.implements Ljavafx/beans/binding/Binding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/binding/ListBinding$EmptyProperty;,
        Ljavafx/beans/binding/ListBinding$SizeProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/binding/ListExpression",
        "<TE;>;",
        "Ljavafx/beans/binding/Binding",
        "<",
        "Ljavafx/collections/ObservableList",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private empty0:Ljavafx/beans/binding/ListBinding$EmptyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/ListBinding",
            "<TE;>.EmptyProperty;"
        }
    .end annotation
.end field

.field private helper:Lcom/sun/javafx/binding/ListExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listChangeListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TE;>;"
        }
    .end annotation
.end field

.field private observer:Lcom/sun/javafx/binding/BindingHelperObserver;

.field private size0:Ljavafx/beans/binding/ListBinding$SizeProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/ListBinding",
            "<TE;>.SizeProperty;"
        }
    .end annotation
.end field

.field private valid:Z

.field private value:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/ListExpression;-><init>()V

    .line 68
    move-object v1, v0

    new-instance v2, Ljavafx/beans/binding/ListBinding$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/beans/binding/ListBinding$1;-><init>(Ljavafx/beans/binding/ListBinding;)V

    iput-object v2, v1, Ljavafx/beans/binding/ListBinding;->listChangeListener:Ljavafx/collections/ListChangeListener;

    .line 78
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/ListBinding;->valid:Z

    .line 80
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    return-void
.end method

.method static synthetic access$000(Ljavafx/beans/binding/ListBinding;)V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/binding/ListBinding;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/ListBinding;->invalidateProperties()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/beans/binding/ListBinding;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/binding/ListBinding;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/beans/binding/ListBinding;
    return-object v0
.end method

.method private invalidateProperties()V
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->size0:Ljavafx/beans/binding/ListBinding$SizeProperty;

    if-eqz v1, :cond_0

    .line 260
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->size0:Ljavafx/beans/binding/ListBinding$SizeProperty;

    invoke-virtual {v1}, Ljavafx/beans/binding/ListBinding$SizeProperty;->fireValueChangedEvent()V

    .line 262
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->empty0:Ljavafx/beans/binding/ListBinding$EmptyProperty;

    if-eqz v1, :cond_1

    .line 263
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->empty0:Ljavafx/beans/binding/ListBinding$EmptyProperty;

    invoke-virtual {v1}, Ljavafx/beans/binding/ListBinding$EmptyProperty;->fireValueChangedEvent()V

    .line 265
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 147
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 157
    return-void
.end method

.method public addListener(Ljavafx/collections/ListChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;->addListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 167
    return-void
.end method

.method protected final varargs bind([Ljavafx/beans/Observable;)V
    .locals 11

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_2

    .line 183
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/ListBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-nez v6, :cond_0

    .line 184
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/binding/BindingHelperObserver;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/binding/BindingHelperObserver;-><init>(Ljavafx/beans/binding/Binding;)V

    iput-object v7, v6, Ljavafx/beans/binding/ListBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 186
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

    .line 187
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 188
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/ListBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 186
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_2
    return-void
.end method

.method protected abstract computeValue()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 216
    .local p0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    return-void
.end method

.method public emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->empty0:Ljavafx/beans/binding/ListBinding$EmptyProperty;

    if-nez v1, :cond_0

    .line 117
    move-object v1, v0

    new-instance v2, Ljavafx/beans/binding/ListBinding$EmptyProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/ListBinding$EmptyProperty;-><init>(Ljavafx/beans/binding/ListBinding;Ljavafx/beans/binding/ListBinding$1;)V

    iput-object v2, v1, Ljavafx/beans/binding/ListBinding;->empty0:Ljavafx/beans/binding/ListBinding$EmptyProperty;

    .line 119
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->empty0:Ljavafx/beans/binding/ListBinding$EmptyProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/ListBinding;->get()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    return-object v0
.end method

.method public final get()Ljavafx/collections/ObservableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/ListBinding;->valid:Z

    if-nez v1, :cond_0

    .line 241
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ListBinding;->computeValue()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Ljavafx/beans/binding/ListBinding;->value:Ljavafx/collections/ObservableList;

    .line 242
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/binding/ListBinding;->valid:Z

    .line 243
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->value:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_0

    .line 244
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->value:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/ListBinding;->listChangeListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 247
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->value:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
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
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/binding/ListExpression;->getValue()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    return-object v0
.end method

.method public final invalidate()V
    .locals 3

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/ListBinding;->valid:Z

    if-eqz v1, :cond_1

    .line 270
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->value:Ljavafx/collections/ObservableList;

    if-eqz v1, :cond_0

    .line 271
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->value:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/ListBinding;->listChangeListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 273
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/ListBinding;->valid:Z

    .line 274
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/ListBinding;->invalidateProperties()V

    .line 275
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/ListBinding;->onInvalidating()V

    .line 276
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ListExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ListExpressionHelper;)V

    .line 278
    :cond_1
    return-void
.end method

.method public final isValid()Z
    .locals 2

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/ListBinding;->valid:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    return v0
.end method

.method protected onInvalidating()V
    .locals 0

    .prologue
    .line 256
    .local p0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 152
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 162
    return-void
.end method

.method public removeListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ListExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ListExpressionHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ListBinding;->helper:Lcom/sun/javafx/binding/ListExpressionHelper;

    .line 172
    return-void
.end method

.method public sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->size0:Ljavafx/beans/binding/ListBinding$SizeProperty;

    if-nez v1, :cond_0

    .line 88
    move-object v1, v0

    new-instance v2, Ljavafx/beans/binding/ListBinding$SizeProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/ListBinding$SizeProperty;-><init>(Ljavafx/beans/binding/ListBinding;Ljavafx/beans/binding/ListBinding$1;)V

    iput-object v2, v1, Ljavafx/beans/binding/ListBinding;->size0:Ljavafx/beans/binding/ListBinding$SizeProperty;

    .line 90
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ListBinding;->size0:Ljavafx/beans/binding/ListBinding$SizeProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/ListBinding;->valid:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ListBinding [value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ListBinding;->get()Ljavafx/collections/ObservableList;

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

    .end local v0    # "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    :cond_0
    const-string v1, "ListBinding [invalid]"

    goto :goto_0
.end method

.method protected final varargs unbind([Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ListBinding;, "Ljavafx/beans/binding/ListBinding<TE;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/ListBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-eqz v6, :cond_2

    .line 202
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

    .line 203
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 204
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/ListBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 202
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/beans/binding/ListBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 209
    :cond_2
    return-void
.end method
