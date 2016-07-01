.class Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;
.super Ljava/lang/Object;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunLoopControl"
.end annotation


# instance fields
.field active:Z

.field release:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V
    .locals 3

    .prologue
    .line 760
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/glass/ui/lens/LensApplication$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/lens/LensApplication$RunLoopControl;-><init>()V

    return-void
.end method
