.class abstract Lcom/sun/glass/ui/lens/LensApplication$Event;
.super Ljava/lang/Object;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Event"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$Event;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$Event;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/glass/ui/lens/LensApplication$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>()V

    return-void
.end method


# virtual methods
.method abstract dispatch()V
.end method
