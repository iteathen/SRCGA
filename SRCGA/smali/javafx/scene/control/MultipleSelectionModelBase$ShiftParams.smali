.class Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
.super Ljava/lang/Object;
.source "MultipleSelectionModelBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/MultipleSelectionModelBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShiftParams"
.end annotation


# instance fields
.field private final clearIndex:I

.field private final selected:Z

.field private final setIndex:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 6

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
    move v1, p1

    .local v1, "clearIndex":I
    move v2, p2

    .local v2, "setIndex":I
    move v3, p3

    .local v3, "selected":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 214
    move-object v4, v0

    move v5, v1

    iput v5, v4, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;->clearIndex:I

    .line 215
    move-object v4, v0

    move v5, v2

    iput v5, v4, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;->setIndex:I

    .line 216
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;->selected:Z

    .line 217
    return-void
.end method


# virtual methods
.method public final getClearIndex()I
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;->clearIndex:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
    return v0
.end method

.method public final getSetIndex()I
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;->setIndex:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
    return v0
.end method

.method public final isSelected()Z
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;->selected:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
    return v0
.end method
