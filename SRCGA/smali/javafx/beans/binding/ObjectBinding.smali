.class public abstract Ljavafx/beans/binding/ObjectBinding;
.super Ljavafx/beans/binding/ObjectExpression;
.source "ObjectBinding.java"

# interfaces
.implements Ljavafx/beans/binding/Binding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/binding/ObjectExpression",
        "<TT;>;",
        "Ljavafx/beans/binding/Binding",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private observer:Lcom/sun/javafx/binding/BindingHelperObserver;

.field private valid:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/ObjectExpression;-><init>()V

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/ObjectBinding;->valid:Z

    .line 68
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 73
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 83
    return-void
.end method

.method protected final varargs bind([Ljavafx/beans/Observable;)V
    .locals 11

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_1

    .line 99
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/ObjectBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-nez v6, :cond_0

    .line 100
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/binding/BindingHelperObserver;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/binding/BindingHelperObserver;-><init>(Ljavafx/beans/binding/Binding;)V

    iput-object v7, v6, Ljavafx/beans/binding/ObjectBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 102
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

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 103
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/ObjectBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_1
    return-void
.end method

.method protected abstract computeValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 128
    .local p0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/ObjectBinding;->valid:Z

    if-nez v1, :cond_0

    .line 153
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ObjectBinding;->computeValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljavafx/beans/binding/ObjectBinding;->value:Ljava/lang/Object;

    .line 154
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/binding/ObjectBinding;->valid:Z

    .line 156
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ObjectBinding;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
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
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    return-object v0
.end method

.method public final invalidate()V
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/ObjectBinding;->valid:Z

    if-eqz v1, :cond_0

    .line 170
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/ObjectBinding;->valid:Z

    .line 171
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/ObjectBinding;->onInvalidating()V

    .line 172
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 174
    :cond_0
    return-void
.end method

.method public final isValid()Z
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/ObjectBinding;->valid:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    return v0
.end method

.method protected onInvalidating()V
    .locals 0

    .prologue
    .line 165
    .local p0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 78
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/ObjectBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/ObjectBinding;->valid:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ObjectBinding [value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/ObjectBinding;->get()Ljava/lang/Object;

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

    .end local v0    # "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    :cond_0
    const-string v1, "ObjectBinding [invalid]"

    goto :goto_0
.end method

.method protected final varargs unbind([Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectBinding;, "Ljavafx/beans/binding/ObjectBinding<TT;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/ObjectBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-eqz v6, :cond_1

    .line 116
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

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 117
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/ObjectBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/beans/binding/ObjectBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 121
    :cond_1
    return-void
.end method
