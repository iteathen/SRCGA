.class final Ljavafx/beans/binding/Bindings$22;
.super Ljavafx/beans/binding/LongBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dependencies:[Ljavafx/beans/Observable;

.field final synthetic val$op1:Ljavafx/beans/value/ObservableNumberValue;

.field final synthetic val$op2:Ljavafx/beans/value/ObservableNumberValue;


# direct methods
.method constructor <init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V
    .locals 6

    .prologue
    .line 1787
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$22;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/binding/Bindings$22;->val$dependencies:[Ljavafx/beans/Observable;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/binding/Bindings$22;->val$op1:Ljavafx/beans/value/ObservableNumberValue;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/binding/Bindings$22;->val$op2:Ljavafx/beans/value/ObservableNumberValue;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/LongBinding;-><init>()V

    .line 1789
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/beans/binding/Bindings$22;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v4, v5}, Ljavafx/beans/binding/LongBinding;->bind([Ljavafx/beans/Observable;)V

    .line 1790
    return-void
.end method


# virtual methods
.method protected computeValue()J
    .locals 6

    .prologue
    .line 1799
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/Bindings$22;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$22;->val$op1:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableNumberValue;->longValue()J

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/beans/binding/Bindings$22;->val$op2:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v4}, Ljavafx/beans/value/ObservableNumberValue;->longValue()J

    move-result-wide v4

    mul-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/Bindings$22;
    return-wide v1
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 1794
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$22;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$22;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v1, v2}, Ljavafx/beans/binding/LongBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 1795
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1805
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$22;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$22;->val$dependencies:[Ljavafx/beans/Observable;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$22;->val$dependencies:[Ljavafx/beans/Observable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1806
    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$22;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$22;
    :cond_0
    new-instance v1, Lcom/sun/javafx/collections/ImmutableObservableList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$22;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method
