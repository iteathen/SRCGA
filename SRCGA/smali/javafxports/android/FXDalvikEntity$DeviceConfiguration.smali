.class Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;
.super Ljava/lang/Object;
.source "FXDalvikEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafxports/android/FXDalvikEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceConfiguration"
.end annotation


# static fields
.field private static final ORIENTATION_CHANGE:I = 0x1


# instance fields
.field private change:I

.field private orientation:I

.field final synthetic this$0:Ljavafxports/android/FXDalvikEntity;


# direct methods
.method constructor <init>(Ljavafxports/android/FXDalvikEntity;)V
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;
    move-object v1, p1

    .local v1, "this$0":Ljavafxports/android/FXDalvikEntity;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->this$0:Ljavafxports/android/FXDalvikEntity;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 407
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->change:I

    .line 411
    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 9

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;
    move-object v2, v0

    iget v2, v2, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->change:I

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    .line 430
    const-string v2, "FXEntity"

    const-string v3, "Dispatching orientation change to"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 432
    :try_start_0
    # getter for: Ljavafxports/android/FXDalvikEntity;->onConfigurationChangedNativeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Ljavafxports/android/FXDalvikEntity;->access$600()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->this$0:Ljavafxports/android/FXDalvikEntity;

    invoke-static {v7}, Ljavafxports/android/FXDalvikEntity;->access$500(Ljavafxports/android/FXDalvikEntity;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 435
    .line 438
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->change:I

    .line 439
    return-void

    .line 433
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "Failed to invoke com.sun.glass.ui.android.DalvikInput.onConfigurationChangedNative method by reflection"

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method getOrientation()I
    .locals 2

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;
    move-object v1, v0

    iget v1, v1, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->orientation:I

    move v0, v1

    .end local v0    # "this":Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;
    return v0
.end method

.method isChanged()Z
    .locals 2

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;
    move-object v1, v0

    iget v1, v1, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->change:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;
    return v0

    .restart local v0    # "this":Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setConfiguration(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;
    move-object v1, p1

    .local v1, "config":Landroid/content/res/Configuration;
    move-object v2, v0

    iget v2, v2, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->orientation:I

    move-object v3, v1

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_0

    .line 415
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, v2, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->orientation:I

    .line 416
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->change:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafxports/android/FXDalvikEntity$DeviceConfiguration;->change:I

    .line 418
    :cond_0
    return-void
.end method
