.class public abstract Ljavafx/beans/binding/LongBinding;
.super Ljavafx/beans/binding/LongExpression;
.source "LongBinding.java"

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

.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/LongExpression;-><init>()V

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/LongBinding;->valid:Z

    .line 68
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->add(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic add(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/LongExpression;->add(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic add(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/LongExpression;->add(I)Ljavafx/beans/binding/LongBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic add(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->add(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 73
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
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v0

    move-object v5, v1

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/ExpressionHelper;->addListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 83
    return-void
.end method

.method protected final varargs bind([Ljavafx/beans/Observable;)V
    .locals 11

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    array-length v6, v6

    if-lez v6, :cond_1

    .line 99
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/LongBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    if-nez v6, :cond_0

    .line 100
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/binding/BindingHelperObserver;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/binding/BindingHelperObserver;-><init>(Ljavafx/beans/binding/Binding;)V

    iput-object v7, v6, Ljavafx/beans/binding/LongBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

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

    iget-object v7, v7, Ljavafx/beans/binding/LongBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_1
    return-void
.end method

.method protected abstract computeValue()J
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public bridge synthetic divide(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->divide(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic divide(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/LongExpression;->divide(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic divide(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/LongExpression;->divide(I)Ljavafx/beans/binding/LongBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic divide(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->divide(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public final get()J
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/LongBinding;->valid:Z

    if-nez v1, :cond_0

    .line 153
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/LongBinding;->computeValue()J

    move-result-wide v2

    iput-wide v2, v1, Ljavafx/beans/binding/LongBinding;->value:J

    .line 154
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/beans/binding/LongBinding;->valid:Z

    .line 156
    :cond_0
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/beans/binding/LongBinding;->value:J

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
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
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/binding/LongExpression;->getValue()Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public final invalidate()V
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/LongBinding;->valid:Z

    if-eqz v1, :cond_0

    .line 170
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/beans/binding/LongBinding;->valid:Z

    .line 171
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/LongBinding;->onInvalidating()V

    .line 172
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

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

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/LongBinding;->valid:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return v0
.end method

.method public bridge synthetic multiply(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->multiply(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic multiply(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/LongExpression;->multiply(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/LongExpression;->multiply(I)Ljavafx/beans/binding/LongBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic multiply(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->multiply(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic negate()Ljavafx/beans/binding/NumberBinding;
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/binding/LongExpression;->negate()Ljavafx/beans/binding/LongBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method protected onInvalidating()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 78
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
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/ExpressionHelper;->removeListener(Lcom/sun/javafx/binding/ExpressionHelper;Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/beans/binding/LongBinding;->helper:Lcom/sun/javafx/binding/ExpressionHelper;

    .line 88
    return-void
.end method

.method public bridge synthetic subtract(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->subtract(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic subtract(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/LongExpression;->subtract(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic subtract(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/binding/LongExpression;->subtract(I)Ljavafx/beans/binding/LongBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public bridge synthetic subtract(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->subtract(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/beans/binding/LongBinding;->valid:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LongBinding [value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/LongBinding;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongBinding;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/LongBinding;
    :cond_0
    const-string v1, "LongBinding [invalid]"

    goto :goto_0
.end method

.method protected final varargs unbind([Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongBinding;
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/LongBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

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

    iget-object v7, v7, Ljavafx/beans/binding/LongBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    invoke-interface {v6, v7}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 116
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    .end local v5    # "dep":Ljavafx/beans/Observable;
    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/beans/binding/LongBinding;->observer:Lcom/sun/javafx/binding/BindingHelperObserver;

    .line 121
    :cond_1
    return-void
.end method
