.class final Ljavafx/beans/binding/Bindings$34;
.super Ljavafx/beans/binding/BooleanBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dependencies:[Ljavafx/beans/Observable;

.field final synthetic val$epsilon:D

.field final synthetic val$op1:Ljavafx/beans/value/ObservableNumberValue;

.field final synthetic val$op2:Ljavafx/beans/value/ObservableNumberValue;


# direct methods
.method constructor <init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V
    .locals 10

    .prologue
    .line 2748
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$34;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/beans/binding/Bindings$34;->val$dependencies:[Ljavafx/beans/Observable;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafx/beans/binding/Bindings$34;->val$op1:Ljavafx/beans/value/ObservableNumberValue;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Ljavafx/beans/binding/Bindings$34;->val$op2:Ljavafx/beans/value/ObservableNumberValue;

    move-object v6, v0

    move-wide v7, v4

    iput-wide v7, v6, Ljavafx/beans/binding/Bindings$34;->val$epsilon:D

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 2750
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/binding/Bindings$34;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v6, v7}, Ljavafx/beans/binding/BooleanBinding;->bind([Ljavafx/beans/Observable;)V

    .line 2751
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 6

    .prologue
    .line 2760
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/Bindings$34;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$34;->val$op1:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableNumberValue;->longValue()J

    move-result-wide v2

    move-object v4, v1

    iget-object v4, v4, Ljavafx/beans/binding/Bindings$34;->val$op2:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v4}, Ljavafx/beans/value/ObservableNumberValue;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-double v2, v2

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/beans/binding/Bindings$34;->val$epsilon:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/Bindings$34;
    return v1

    .restart local v1    # "this":Ljavafx/beans/binding/Bindings$34;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 2755
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$34;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$34;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-super {v1, v2}, Ljavafx/beans/binding/BooleanBinding;->unbind([Ljavafx/beans/Observable;)V

    .line 2756
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
    .line 2766
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$34;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$34;->val$dependencies:[Ljavafx/beans/Observable;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$34;->val$dependencies:[Ljavafx/beans/Observable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2767
    invoke-static {v1}, Ljavafx/collections/FXCollections;->singletonObservableList(Ljava/lang/Object;)Ljavafx/collections/ObservableList;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$34;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$34;
    :cond_0
    new-instance v1, Lcom/sun/javafx/collections/ImmutableObservableList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Ljavafx/beans/binding/Bindings$34;->val$dependencies:[Ljavafx/beans/Observable;

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method
