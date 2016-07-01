.class Ljavafx/beans/property/IntegerPropertyBase$2;
.super Ljavafx/beans/binding/IntegerBinding;
.source "IntegerPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/property/IntegerPropertyBase;->bind(Ljavafx/beans/value/ObservableValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/property/IntegerPropertyBase;

.field final synthetic val$rawObservable:Ljavafx/beans/value/ObservableValue;


# direct methods
.method constructor <init>(Ljavafx/beans/property/IntegerPropertyBase;Ljavafx/beans/value/ObservableValue;)V
    .locals 9

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerPropertyBase$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/property/IntegerPropertyBase;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/IntegerPropertyBase$2;->this$0:Ljavafx/beans/property/IntegerPropertyBase;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/property/IntegerPropertyBase$2;->val$rawObservable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/IntegerBinding;-><init>()V

    .line 186
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/property/IntegerPropertyBase$2;->val$rawObservable:Ljavafx/beans/value/ObservableValue;

    aput-object v7, v5, v6

    invoke-super {v3, v4}, Ljavafx/beans/binding/IntegerBinding;->bind([Ljavafx/beans/Observable;)V

    .line 187
    return-void
.end method


# virtual methods
.method protected computeValue()I
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/IntegerPropertyBase$2;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/IntegerPropertyBase$2;->val$rawObservable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    move-object v1, v2

    .line 192
    .local v1, "value":Ljava/lang/Number;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/property/IntegerPropertyBase$2;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/IntegerPropertyBase$2;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_0
.end method
