.class Ljavafx/beans/property/BooleanPropertyBase$1;
.super Ljavafx/beans/binding/BooleanBinding;
.source "BooleanPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/property/BooleanPropertyBase;->bind(Ljavafx/beans/value/ObservableValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/property/BooleanPropertyBase;

.field final synthetic val$rawObservable:Ljavafx/beans/value/ObservableValue;


# direct methods
.method constructor <init>(Ljavafx/beans/property/BooleanPropertyBase;Ljavafx/beans/value/ObservableValue;)V
    .locals 9

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/property/BooleanPropertyBase;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/beans/property/BooleanPropertyBase$1;->this$0:Ljavafx/beans/property/BooleanPropertyBase;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/beans/property/BooleanPropertyBase$1;->val$rawObservable:Ljavafx/beans/value/ObservableValue;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/binding/BooleanBinding;-><init>()V

    .line 169
    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/beans/property/BooleanPropertyBase$1;->val$rawObservable:Ljavafx/beans/value/ObservableValue;

    aput-object v7, v5, v6

    invoke-super {v3, v4}, Ljavafx/beans/binding/BooleanBinding;->bind([Ljavafx/beans/Observable;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected computeValue()Z
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanPropertyBase$1;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/beans/property/BooleanPropertyBase$1;->val$rawObservable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v2}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v1, v2

    .line 175
    .local v1, "value":Ljava/lang/Boolean;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase$1;
    return v0

    .restart local v0    # "this":Ljavafx/beans/property/BooleanPropertyBase$1;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method
