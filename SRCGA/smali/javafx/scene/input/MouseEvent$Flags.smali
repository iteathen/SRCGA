.class Ljavafx/scene/input/MouseEvent$Flags;
.super Ljava/lang/Object;
.source "MouseEvent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/MouseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Flags"
.end annotation


# instance fields
.field dragDetect:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent$Flags;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 928
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/input/MouseEvent$Flags;->dragDetect:Z

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/input/MouseEvent$1;)V
    .locals 3

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent$Flags;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/input/MouseEvent$1;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/input/MouseEvent$Flags;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent$Flags;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/MouseEvent$Flags;->clone()Ljavafx/scene/input/MouseEvent$Flags;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/MouseEvent$Flags;
    return-object v0
.end method

.method public clone()Ljavafx/scene/input/MouseEvent$Flags;
    .locals 3

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/MouseEvent$Flags;
    move-object v2, v0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/input/MouseEvent$Flags;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 936
    .end local v0    # "this":Ljavafx/scene/input/MouseEvent$Flags;
    :goto_0
    return-object v0

    .line 934
    .restart local v0    # "this":Ljavafx/scene/input/MouseEvent$Flags;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 936
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method
