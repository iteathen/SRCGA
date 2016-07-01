.class Ljavafxports/android/FXDalvikEntity$SurfaceDetails;
.super Ljava/lang/Object;
.source "FXDalvikEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafxports/android/FXDalvikEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceDetails"
.end annotation


# instance fields
.field density:F

.field format:I

.field height:I

.field surface:Landroid/view/Surface;

.field final synthetic this$0:Ljavafxports/android/FXDalvikEntity;

.field width:I


# direct methods
.method constructor <init>(Ljavafxports/android/FXDalvikEntity;)V
    .locals 4

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$SurfaceDetails;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/FXDalvikEntity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->this$0:Ljavafxports/android/FXDalvikEntity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 452
    return-void
.end method

.method constructor <init>(Ljavafxports/android/FXDalvikEntity;Landroid/view/Surface;)V
    .locals 5

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$SurfaceDetails;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/FXDalvikEntity;
    move-object v2, p2

    .local v2, "surface":Landroid/view/Surface;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->this$0:Ljavafxports/android/FXDalvikEntity;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 455
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->surface:Landroid/view/Surface;

    .line 456
    return-void
.end method

.method constructor <init>(Ljavafxports/android/FXDalvikEntity;Landroid/view/Surface;F)V
    .locals 6

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$SurfaceDetails;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/FXDalvikEntity;
    move-object v2, p2

    .local v2, "surface":Landroid/view/Surface;
    move v3, p3

    .local v3, "density":F
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->this$0:Ljavafxports/android/FXDalvikEntity;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 459
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->surface:Landroid/view/Surface;

    .line 460
    move-object v4, v0

    move v5, v3

    iput v5, v4, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->density:F

    .line 461
    return-void
.end method

.method constructor <init>(Ljavafxports/android/FXDalvikEntity;Landroid/view/Surface;II)V
    .locals 7

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$SurfaceDetails;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/FXDalvikEntity;
    move-object v2, p2

    .local v2, "surface":Landroid/view/Surface;
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->this$0:Ljavafxports/android/FXDalvikEntity;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 464
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->surface:Landroid/view/Surface;

    .line 465
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->width:I

    .line 466
    move-object v5, v0

    move v6, v4

    iput v6, v5, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->height:I

    .line 467
    return-void
.end method

.method constructor <init>(Ljavafxports/android/FXDalvikEntity;Landroid/view/Surface;III)V
    .locals 8

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$SurfaceDetails;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/FXDalvikEntity;
    move-object v2, p2

    .local v2, "surface":Landroid/view/Surface;
    move v3, p3

    .local v3, "format":I
    move v4, p4

    .local v4, "width":I
    move v5, p5

    .local v5, "height":I
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->this$0:Ljavafxports/android/FXDalvikEntity;

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 470
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->surface:Landroid/view/Surface;

    .line 471
    move-object v6, v0

    move v7, v3

    iput v7, v6, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->format:I

    .line 472
    move-object v6, v0

    move v7, v4

    iput v7, v6, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->width:I

    .line 473
    move-object v6, v0

    move v7, v5

    iput v7, v6, Ljavafxports/android/FXDalvikEntity$SurfaceDetails;->height:I

    .line 474
    return-void
.end method
