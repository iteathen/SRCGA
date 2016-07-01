.class public abstract Ljavafx/beans/binding/DoubleBinding;
.super Ljavafx/beans/binding/DoubleExpression;
.source "DoubleBinding.java"

# interfaces
.implements Ljavafx/beans/binding/NumberBinding;


# instance fields
.field private helper:Lcom/sun/javafx/binding/ExpressionHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private observer:Lcom/sun/javafx/binding/BindingHelperObserver;

.field private valid:Z

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/DoubleExpression;-><init>()V

    .line 118
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->add(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic add(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->add(F)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic add(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->add(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic add(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->add(J)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic add(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->add(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 123
    return-void
.end method

.method public addListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 133
    return-void
.end method

.method protected final varargs bind([Ljavafx/beans/Observable;)V
    .locals 11

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_1

    .line 149
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/DoubleBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-nez v6, :cond_0

    .line 150
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/binding/BindingHelperObserver;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/binding/BindingHelperObserver;-><init>(Ljavafx/beans/binding/Binding;)V

    iput-object v7, v6, Ljavafx/beans/binding/DoubleBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 152
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

    .line 153
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/DoubleBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_1
    return-void
.end method

.method protected abstract computeValue()D
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public bridge synthetic divide(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->divide(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic divide(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->divide(F)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic divide(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->divide(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic divide(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->divide(J)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic divide(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->divide(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public final get()D
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/DoubleBinding;->valid:Z

    if-nez v1, :cond_0

    .line 203
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/DoubleBinding;->computeValue()D

    move-result-wide v2

    iput-wide v2, v1, Ljavafx/beans/binding/DoubleBinding;->value:D

    .line 204
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/binding/DoubleBinding;->valid:Z

    .line 206
    :cond_0
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/beans/binding/DoubleBinding;->value:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-wide v0
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
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/binding/DoubleExpression;->getValue()Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public final invalidate()V
    .locals 3

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/DoubleBinding;->valid:Z

    if-eqz v1, :cond_0

    .line 220
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/DoubleBinding;->valid:Z

    .line 221
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/DoubleBinding;->onInvalidating()V

    .line 222
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    invoke-static {v1}, Lcom/sun/javafx/binding/ExpressionHelper;->fireValueChangedEvent(Lcom/sun/javafx/binding/ExpressionHelper;)V

    .line 224
    :cond_0
    return-void
.end method

.method public final isValid()Z
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/DoubleBinding;->valid:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return v0
.end method

.method public bridge synthetic multiply(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->multiply(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic multiply(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->multiply(F)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->multiply(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic multiply(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->multiply(J)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic multiply(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->multiply(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic negate()Ljavafx/beans/binding/NumberBinding;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/binding/DoubleExpression;->negate()Ljavafx/beans/binding/DoubleBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method protected onInvalidating()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 128
    return-void
.end method

.method public removeListener(Ljavafx/beans/value/ChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/DoubleBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 138
    return-void
.end method

.method public bridge synthetic subtract(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->subtract(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic subtract(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->subtract(F)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic subtract(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->subtract(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic subtract(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->subtract(J)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public bridge synthetic subtract(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->subtract(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/DoubleBinding;->valid:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoubleBinding [value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/DoubleBinding;->get()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/DoubleBinding;
    :cond_0
    const-string v1, "DoubleBinding [invalid]"

    goto :goto_0
.end method

.method protected final varargs unbind([Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleBinding;
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/DoubleBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-eqz v6, :cond_1

    .line 166
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

    .line 167
    .local v5, "dep":Ljavafx/beans/Observable;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/DoubleBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 169
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/beans/binding/DoubleBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 171
    :cond_1
    return-void
.end method
