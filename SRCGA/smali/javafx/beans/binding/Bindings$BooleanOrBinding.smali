.class Ljavafx/beans/binding/Bindings$BooleanOrBinding;
.super Ljavafx/beans/binding/BooleanBinding;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/beans/binding/Bindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BooleanOrBinding"
.end annotation


# instance fields
.field private final observer:Ljavafx/beans/InvalidationListener;

.field private final op1:Ljavafx/beans/value/ObservableBooleanValue;

.field private final op2:Ljavafx/beans/value/ObservableBooleanValue;


# direct methods
.method public constructor <init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)V
    .locals 9

    .prologue
    .line 4589
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$BooleanOrBinding;
    move-object v1, p1

    .local v1, "op1":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 4590
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->op1:Ljavafx/beans/value/ObservableBooleanValue;

    .line 4591
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->op2:Ljavafx/beans/value/ObservableBooleanValue;

    .line 4592
    move-object v3, v0

    new-instance v4, Ljavafx/beans/binding/Bindings$ShortCircuitOrInvalidator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/beans/binding/Bindings$ShortCircuitOrInvalidator;-><init>(Ljavafx/beans/binding/Bindings$BooleanOrBinding;Ljavafx/beans/binding/Bindings$1;)V

    iput-object v4, v3, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->observer:Ljavafx/beans/InvalidationListener;

    .line 4593
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 4594
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableBooleanValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 4595
    return-void
.end method

.method static synthetic access$300(Ljavafx/beans/binding/Bindings$BooleanOrBinding;)Ljavafx/beans/value/ObservableBooleanValue;
    .locals 2

    .prologue
    .line 4583
    move-object v0, p0

    .local v0, "x0":Ljavafx/beans/binding/Bindings$BooleanOrBinding;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->op1:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/beans/binding/Bindings$BooleanOrBinding;
    return-object v0
.end method


# virtual methods
.method protected computeValue()Z
    .locals 2

    .prologue
    .line 4606
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$BooleanOrBinding;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->op1:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->op2:Ljavafx/beans/value/ObservableBooleanValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableBooleanValue;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$BooleanOrBinding;
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/Bindings$BooleanOrBinding;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 4600
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$BooleanOrBinding;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->op1:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 4601
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->op2:Ljavafx/beans/value/ObservableBooleanValue;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->observer:Ljavafx/beans/InvalidationListener;

    invoke-interface {v1, v2}, Ljavafx/beans/value/ObservableBooleanValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 4602
    return-void
.end method

.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 4612
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings$BooleanOrBinding;
    new-instance v1, Lcom/sun/javafx/collections/ImmutableObservableList;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/4 v3, 0x2

    new-array v3, v3, [Ljavafx/beans/value/ObservableBooleanValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->op1:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Ljavafx/beans/binding/Bindings$BooleanOrBinding;->op2:Ljavafx/beans/value/ObservableBooleanValue;

    aput-object v6, v4, v5

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ImmutableObservableList;-><init>([Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/Bindings$BooleanOrBinding;
    return-object v0
.end method
