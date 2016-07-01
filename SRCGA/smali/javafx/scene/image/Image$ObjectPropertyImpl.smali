.class final Ljavafx/scene/image/Image$ObjectPropertyImpl;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ObjectPropertyImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ReadOnlyObjectPropertyBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field final synthetic this$0:Ljavafx/scene/image/Image;

.field private valid:Z

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/image/Image;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/image/Image$ObjectPropertyImpl;->this$0:Ljavafx/scene/image/Image;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    .line 563
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/image/Image$ObjectPropertyImpl;->valid:Z

    .line 566
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/image/Image$ObjectPropertyImpl;->name:Ljava/lang/String;

    .line 567
    return-void
.end method

.method private markInvalid()V
    .locals 3

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/image/Image$ObjectPropertyImpl;->valid:Z

    if-eqz v1, :cond_0

    .line 587
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/image/Image$ObjectPropertyImpl;->valid:Z

    .line 588
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->fireValueChangedEvent()V

    .line 590
    :cond_0
    return-void
.end method


# virtual methods
.method public fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;->fireValueChangedEvent()V

    .line 583
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/image/Image$ObjectPropertyImpl;->valid:Z

    .line 595
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$ObjectPropertyImpl;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$ObjectPropertyImpl;->this$0:Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 605
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$ObjectPropertyImpl;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/image/Image$ObjectPropertyImpl;->value:Ljava/lang/Object;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 575
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/Image$ObjectPropertyImpl;->value:Ljava/lang/Object;

    .line 576
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->markInvalid()V

    .line 578
    :cond_0
    return-void
.end method

.method public store(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$ObjectPropertyImpl;, "Ljavafx/scene/image/Image$ObjectPropertyImpl<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/Image$ObjectPropertyImpl;->value:Ljava/lang/Object;

    .line 571
    return-void
.end method
