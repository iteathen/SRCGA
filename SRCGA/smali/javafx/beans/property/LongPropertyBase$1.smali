.class Ljavafx/beans/property/LongPropertyBase$1;
.super Ljavafx/beans/binding/LongBinding;
.source "LongPropertyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/beans/property/LongPropertyBase;->bind(Ljavafx/beans/value/ObservableValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/beans/property/LongPropertyBase;

.field final synthetic val$numberValue:Ljavafx/beans/value/ObservableNumberValue;

.field final synthetic val$rawObservable:Ljavafx/beans/value/ObservableValue;


# direct methods
.method constructor <init>(Ljavafx/beans/property/LongPropertyBase;Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ObservableNumberValue;)V
    .locals 10

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/LongPropertyBase$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/beans/property/LongPropertyBase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/beans/property/LongPropertyBase$1;->this$0:Ljavafx/beans/property/LongPropertyBase;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/beans/property/LongPropertyBase$1;->val$rawObservable:Ljavafx/beans/value/ObservableValue;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/beans/property/LongPropertyBase$1;->val$numberValue:Ljavafx/beans/value/ObservableNumberValue;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/beans/binding/LongBinding;-><init>()V

    .line 175
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Ljavafx/beans/property/LongPropertyBase$1;->val$rawObservable:Ljavafx/beans/value/ObservableValue;

    aput-object v8, v6, v7

    invoke-super {v4, v5}, Ljavafx/beans/binding/LongBinding;->bind([Ljavafx/beans/Observable;)V

    .line 176
    return-void
.end method


# virtual methods
.method protected computeValue()J
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/LongPropertyBase$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/beans/property/LongPropertyBase$1;->val$numberValue:Ljavafx/beans/value/ObservableNumberValue;

    invoke-interface {v1}, Ljavafx/beans/value/ObservableNumberValue;->longValue()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/property/LongPropertyBase$1;
    return-wide v0
.end method
