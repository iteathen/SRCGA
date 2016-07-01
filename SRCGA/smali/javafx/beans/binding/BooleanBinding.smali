.class public abstract Ljavafx/beans/binding/BooleanBinding;
.super Ljavafx/beans/binding/BooleanExpression;
.source "BooleanBinding.java"

# interfaces
.implements Ljavafx/beans/binding/Binding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/binding/BooleanExpression;",
        "Ljavafx/beans/binding/Binding",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private observer:Lcom/sun/javafx/binding/BindingHelperObserver;

.field private valid:Z

.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/BooleanExpression;-><init>()V

    .line 70
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/BooleanBinding;->valid:Z

    .line 72
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 67
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 77
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 87
    return-void
.end method

.method protected final varargs bind([Ljavafx/beans/Observable;)V
    .locals 11

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_1

    .line 103
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/BooleanBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-nez v6, :cond_0

    .line 104
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/binding/BindingHelperObserver;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/binding/BindingHelperObserver;-><init>(Ljavafx/beans/binding/Binding;)V

    iput-object v7, v6, Ljavafx/beans/binding/BooleanBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 106
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

    .line 107
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/BooleanBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_1
    return-void
.end method

.method protected abstract computeValue()Z
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public final get()Z
    .locals 3

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/BooleanBinding;->valid:Z

    if-nez v1, :cond_0

    .line 157
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/BooleanBinding;->computeValue()Z

    move-result v2

    iput-boolean v2, v1, Ljavafx/beans/binding/BooleanBinding;->value:Z

    .line 158
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/binding/BooleanBinding;->valid:Z

    .line 160
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/BooleanBinding;->value:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanBinding;
    return v0
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
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanBinding;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/binding/BooleanExpression;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanBinding;
    return-object v0
.end method

.method public final invalidate()V
    .locals 3

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/BooleanBinding;->valid:Z

    if-eqz v1, :cond_0

    .line 174
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/BooleanBinding;->valid:Z

    .line 175
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/BooleanBinding;->onInvalidating()V

    .line 176
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 178
    :cond_0
    return-void
.end method

.method public final isValid()Z
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/BooleanBinding;->valid:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanBinding;
    return v0
.end method

.method protected onInvalidating()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 82
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/BooleanBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/BooleanBinding;->valid:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BooleanBinding [value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/BooleanBinding;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanBinding;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/BooleanBinding;
    :cond_0
    const-string v1, "BooleanBinding [invalid]"

    goto :goto_0
.end method

.method protected final varargs unbind([Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanBinding;
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/BooleanBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-eqz v6, :cond_1

    .line 120
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

    .line 121
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/BooleanBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/beans/binding/BooleanBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 125
    :cond_1
    return-void
.end method
