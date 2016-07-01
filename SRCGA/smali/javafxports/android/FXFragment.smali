.class public Ljavafxports/android/FXFragment;
.super Landroid/app/Fragment;
.source "FXFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FXFragment"

.field private static cdlEvLoopFinished:Ljava/util/concurrent/CountDownLatch;

.field private static launcher:Ljavafxports/android/Launcher;


# instance fields
.field private activity:Landroid/app/Activity;

.field private fxAppClassName:Ljava/lang/String;

.field private fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

.field private mView:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "activity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXFragment;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Fragment;-><init>()V

    .line 53
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafxports/android/FXFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, v1, Ljavafxports/android/FXFragment;->activity:Landroid/app/Activity;

    .line 54
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXFragment;
    move-object v1, p1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object v2, p2

    .local v2, "container":Landroid/view/ViewGroup;
    move-object v3, p3

    .local v3, "metadata":Landroid/os/Bundle;
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafxports/android/FXFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, v4, Ljavafxports/android/FXFragment;->activity:Landroid/app/Activity;

    .line 64
    move-object v4, v3

    if-nez v4, :cond_0

    .line 65
    new-instance v4, Landroid/os/Bundle;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 67
    :cond_0
    move-object v4, v3

    const-string v5, "main.class"

    move-object v6, v0

    iget-object v6, v6, Ljavafxports/android/FXFragment;->fxAppClassName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    move-object v4, v0

    new-instance v5, Ljavafxports/android/FXDalvikEntity;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Ljavafxports/android/FXFragment;->activity:Landroid/app/Activity;

    invoke-direct {v6, v7, v8}, Ljavafxports/android/FXDalvikEntity;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    iput-object v5, v4, Ljavafxports/android/FXFragment;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    .line 69
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljavafxports/android/FXFragment;->fxDalvikEntity:Ljavafxports/android/FXDalvikEntity;

    invoke-virtual {v5}, Ljavafxports/android/FXDalvikEntity;->createView()Landroid/view/TextureView;

    move-result-object v5

    iput-object v5, v4, Ljavafxports/android/FXFragment;->mView:Landroid/view/TextureView;

    .line 70
    move-object v4, v0

    iget-object v4, v4, Ljavafxports/android/FXFragment;->mView:Landroid/view/TextureView;

    move-object v0, v4

    .end local v0    # "this":Ljavafxports/android/FXFragment;
    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafxports/android/FXFragment;
    move-object v1, p1

    .local v1, "appname":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafxports/android/FXFragment;->fxAppClassName:Ljava/lang/String;

    .line 58
    return-void
.end method
