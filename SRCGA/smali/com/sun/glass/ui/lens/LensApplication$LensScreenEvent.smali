.class Lcom/sun/glass/ui/lens/LensApplication$LensScreenEvent;
.super Lcom/sun/glass/ui/lens/LensApplication$Event;
.source "LensApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/lens/LensApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LensScreenEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/glass/ui/lens/LensApplication;


# direct methods
.method private constructor <init>(Lcom/sun/glass/ui/lens/LensApplication;)V
    .locals 4

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensScreenEvent;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/glass/ui/lens/LensApplication$LensScreenEvent;->this$0:Lcom/sun/glass/ui/lens/LensApplication;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/lens/LensApplication$Event;-><init>(Lcom/sun/glass/ui/lens/LensApplication$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/glass/ui/lens/LensApplication;Lcom/sun/glass/ui/lens/LensApplication$1;)V
    .locals 5

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensApplication$LensScreenEvent;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/glass/ui/lens/LensApplication;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/glass/ui/lens/LensApplication$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/glass/ui/lens/LensApplication$LensScreenEvent;-><init>(Lcom/sun/glass/ui/lens/LensApplication;)V

    return-void
.end method


# virtual methods
.method dispatch()V
    .locals 0

    .prologue
    .line 702
    invoke-static {}, Lcom/sun/glass/ui/Screen;->notifySettingsChanged()V

    .line 703
    return-void
.end method
