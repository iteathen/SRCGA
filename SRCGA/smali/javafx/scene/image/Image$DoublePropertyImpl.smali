.class final Ljavafx/scene/image/Image$DoublePropertyImpl;
.super Ljavafx/beans/property/ReadOnlyDoublePropertyBase;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DoublePropertyImpl"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/scene/image/Image;

.field private value:D


# direct methods
.method public constructor <init>(Ljavafx/scene/image/Image;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$DoublePropertyImpl;
    move-object v1, p1

    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/image/Image$DoublePropertyImpl;->this$0:Ljavafx/scene/image/Image;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/ReadOnlyDoublePropertyBase;-><init>()V

    .line 300
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/image/Image$DoublePropertyImpl;->name:Ljava/lang/String;

    .line 301
    return-void
.end method


# virtual methods
.method public fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$DoublePropertyImpl;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyDoublePropertyBase;->fireValueChangedEvent()V

    .line 310
    return-void
.end method

.method public get()D
    .locals 3

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$DoublePropertyImpl;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/image/Image$DoublePropertyImpl;->value:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image$DoublePropertyImpl;
    return-wide v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$DoublePropertyImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$DoublePropertyImpl;->this$0:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image$DoublePropertyImpl;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$DoublePropertyImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$DoublePropertyImpl;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image$DoublePropertyImpl;
    return-object v0
.end method

.method public store(D)V
    .locals 7

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$DoublePropertyImpl;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/image/Image$DoublePropertyImpl;->value:D

    .line 305
    return-void
.end method
