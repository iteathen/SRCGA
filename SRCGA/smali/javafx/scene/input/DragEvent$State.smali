.class Ljavafx/scene/input/DragEvent$State;
.super Ljava/lang/Object;
.source "DragEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/DragEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field accepted:Z

.field acceptedTrasferMode:Ljavafx/scene/input/TransferMode;

.field acceptingObject:Ljava/lang/Object;

.field dropCompleted:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent$State;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 762
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/input/DragEvent$State;->accepted:Z

    .line 767
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/input/DragEvent$State;->dropCompleted:Z

    .line 772
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/input/DragEvent$State;->acceptedTrasferMode:Ljavafx/scene/input/TransferMode;

    .line 777
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/input/DragEvent$State;->acceptingObject:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/input/DragEvent$1;)V
    .locals 3

    .prologue
    .line 758
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/DragEvent$State;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/input/DragEvent$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/input/DragEvent$State;-><init>()V

    return-void
.end method
