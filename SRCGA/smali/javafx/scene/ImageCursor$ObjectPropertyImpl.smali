.class final Ljavafx/scene/ImageCursor$ObjectPropertyImpl;
.super Ljavafx/beans/property/ReadOnlyObjectPropertyBase;
.source "ImageCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/ImageCursor;
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

.field final synthetic this$0:Ljavafx/scene/ImageCursor;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/scene/ImageCursor;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor$ObjectPropertyImpl;, "Ljavafx/scene/ImageCursor$ObjectPropertyImpl<TT;>;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;->this$0:Ljavafx/scene/ImageCursor;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;-><init>()V

    .line 574
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;->name:Ljava/lang/String;

    .line 575
    return-void
.end method


# virtual methods
.method public fireValueChangedEvent()V
    .locals 2

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor$ObjectPropertyImpl;, "Ljavafx/scene/ImageCursor$ObjectPropertyImpl<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/beans/property/ReadOnlyObjectPropertyBase;->fireValueChangedEvent()V

    .line 584
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor$ObjectPropertyImpl;, "Ljavafx/scene/ImageCursor$ObjectPropertyImpl<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor$ObjectPropertyImpl;, "Ljavafx/scene/ImageCursor$ObjectPropertyImpl<TT;>;"
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor$ObjectPropertyImpl;, "Ljavafx/scene/ImageCursor$ObjectPropertyImpl<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;->this$0:Ljavafx/scene/ImageCursor;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor$ObjectPropertyImpl;, "Ljavafx/scene/ImageCursor$ObjectPropertyImpl<TT;>;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor$ObjectPropertyImpl;, "Ljavafx/scene/ImageCursor$ObjectPropertyImpl<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/ImageCursor$ObjectPropertyImpl;, "Ljavafx/scene/ImageCursor$ObjectPropertyImpl<TT;>;"
    return-object v0
.end method

.method public store(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ImageCursor$ObjectPropertyImpl;, "Ljavafx/scene/ImageCursor$ObjectPropertyImpl<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/ImageCursor$ObjectPropertyImpl;->value:Ljava/lang/Object;

    .line 579
    return-void
.end method
