.class public abstract Ljavafx/beans/binding/SetBinding;
.super Ljavafx/beans/binding/SetExpression;
.source "SetBinding.java"

# interfaces
.implements Ljavafx/beans/binding/Binding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/binding/SetBinding$EmptyProperty;,
        Ljavafx/beans/binding/SetBinding$SizeProperty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/binding/SetExpression",
        "<TE;>;",
        "Ljavafx/beans/binding/Binding",
        "<",
        "Ljavafx/collections/ObservableSet",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private empty0:Ljavafx/beans/binding/SetBinding$EmptyProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/SetBinding",
            "<TE;>.EmptyProperty;"
        }
    .end annotation
.end field

.field private helper:Lcom/sun/javafx/binding/SetExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation
.end field

.field private observer:Lcom/sun/javafx/binding/BindingHelperObserver;

.field private final setChangeListener:Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/SetChangeListener",
            "<TE;>;"
        }
    .end annotation
.end field

.field private size0:Ljavafx/beans/binding/SetBinding$SizeProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/SetBinding",
            "<TE;>.SizeProperty;"
        }
    .end annotation
.end field

.field private valid:Z

.field private value:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/SetExpression;-><init>()V

    .line 69
    move-object v1, v0

    new-instance v2, Ljavafx/beans/binding/SetBinding$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/beans/binding/SetBinding$1;-><init>(Ljavafx/beans/binding/SetBinding;)V

    iput-object v2, v1, Ljavafx/beans/binding/SetBinding;->setChangeListener:Ljavafx/collections/SetChangeListener;

    .line 79
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/SetBinding;->valid:Z

    .line 81
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    return-void
.end method

.method static synthetic access$000(Ljavafx/beans/binding/SetBinding;)V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/binding/SetBinding;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/SetBinding;->invalidateProperties()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/beans/binding/SetBinding;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/binding/SetBinding;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/beans/binding/SetBinding;
    return-object v0
.end method

.method private invalidateProperties()V
    .locals 2

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->size0:Ljavafx/beans/binding/SetBinding$SizeProperty;

    if-eqz v1, :cond_0

    .line 261
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->size0:Ljavafx/beans/binding/SetBinding$SizeProperty;

    invoke-virtual {v1}, Ljavafx/beans/binding/SetBinding$SizeProperty;->fireValueChangedEvent()V

    .line 263
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->empty0:Ljavafx/beans/binding/SetBinding$EmptyProperty;

    if-eqz v1, :cond_1

    .line 264
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->empty0:Ljavafx/beans/binding/SetBinding$EmptyProperty;

    invoke-virtual {v1}, Ljavafx/beans/binding/SetBinding$EmptyProperty;->fireValueChangedEvent()V

    .line 266
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 148
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 158
    return-void
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;->addListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 168
    return-void
.end method

.method protected final varargs bind([Ljavafx/beans/Observable;)V
    .locals 11

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_2

    .line 184
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/SetBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-nez v6, :cond_0

    .line 185
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/binding/BindingHelperObserver;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/binding/BindingHelperObserver;-><init>(Ljavafx/beans/binding/Binding;)V

    iput-object v7, v6, Ljavafx/beans/binding/SetBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 187
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

    .line 188
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 189
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/SetBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 187
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_2
    return-void
.end method

.method protected abstract computeValue()Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 217
    .local p0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    return-void
.end method

.method public emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->empty0:Ljavafx/beans/binding/SetBinding$EmptyProperty;

    if-nez v1, :cond_0

    .line 118
    move-object v1, v0

    new-instance v2, Ljavafx/beans/binding/SetBinding$EmptyProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/SetBinding$EmptyProperty;-><init>(Ljavafx/beans/binding/SetBinding;Ljavafx/beans/binding/SetBinding$1;)V

    iput-object v2, v1, Ljavafx/beans/binding/SetBinding;->empty0:Ljavafx/beans/binding/SetBinding$EmptyProperty;

    .line 120
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->empty0:Ljavafx/beans/binding/SetBinding$EmptyProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/SetBinding;->get()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    return-object v0
.end method

.method public final get()Ljavafx/collections/ObservableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/SetBinding;->valid:Z

    if-nez v1, :cond_0

    .line 242
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/SetBinding;->computeValue()Ljavafx/collections/ObservableSet;

    move-result-object v2

    iput-object v2, v1, Ljavafx/beans/binding/SetBinding;->value:Ljavafx/collections/ObservableSet;

    .line 243
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/binding/SetBinding;->valid:Z

    .line 244
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->value:Ljavafx/collections/ObservableSet;

    if-eqz v1, :cond_0

    .line 245
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->value:Ljavafx/collections/ObservableSet;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/SetBinding;->setChangeListener:Ljavafx/collections/SetChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 248
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->value:Ljavafx/collections/ObservableSet;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
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
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/binding/SetExpression;->getValue()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    return-object v0
.end method

.method public final invalidate()V
    .locals 3

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/SetBinding;->valid:Z

    if-eqz v1, :cond_1

    .line 271
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->value:Ljavafx/collections/ObservableSet;

    if-eqz v1, :cond_0

    .line 272
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->value:Ljavafx/collections/ObservableSet;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/SetBinding;->setChangeListener:Ljavafx/collections/SetChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableSet;->removeListener(Ljavafx/collections/SetChangeListener;)V

    .line 274
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/SetBinding;->valid:Z

    .line 275
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/SetBinding;->invalidateProperties()V

    .line 276
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/SetBinding;->onInvalidating()V

    .line 277
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/SetExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/SetExpressionHelper;)V

    .line 279
    :cond_1
    return-void
.end method

.method public final isValid()Z
    .locals 2

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/SetBinding;->valid:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    return v0
.end method

.method protected onInvalidating()V
    .locals 0

    .prologue
    .line 257
    .local p0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 153
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 163
    return-void
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper;->removeListener(Lcom/sun/javafx/binding/SetExpressionHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/SetBinding;->helper:Lcom/sun/javafx/binding/SetExpressionHelper;

    .line 173
    return-void
.end method

.method public sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->size0:Ljavafx/beans/binding/SetBinding$SizeProperty;

    if-nez v1, :cond_0

    .line 89
    move-object v1, v0

    new-instance v2, Ljavafx/beans/binding/SetBinding$SizeProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/SetBinding$SizeProperty;-><init>(Ljavafx/beans/binding/SetBinding;Ljavafx/beans/binding/SetBinding$1;)V

    iput-object v2, v1, Ljavafx/beans/binding/SetBinding;->size0:Ljavafx/beans/binding/SetBinding$SizeProperty;

    .line 91
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/SetBinding;->size0:Ljavafx/beans/binding/SetBinding$SizeProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/SetBinding;->valid:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetBinding [value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/SetBinding;->get()Ljavafx/collections/ObservableSet;

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

    .end local v0    # "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    :cond_0
    const-string v1, "SetBinding [invalid]"

    goto :goto_0
.end method

.method protected final varargs unbind([Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/SetBinding;, "Ljavafx/beans/binding/SetBinding<TE;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/SetBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-eqz v6, :cond_2

    .line 203
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

    .line 204
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 205
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/SetBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 203
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/beans/binding/SetBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 210
    :cond_2
    return-void
.end method
