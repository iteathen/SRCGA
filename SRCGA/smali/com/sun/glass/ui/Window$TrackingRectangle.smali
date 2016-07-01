.class Lcom/sun/glass/ui/Window$TrackingRectangle;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/glass/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackingRectangle"
.end annotation


# instance fields
.field height:I

.field size:I

.field width:I

.field x:I

.field y:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 1384
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$TrackingRectangle;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1385
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    .line 1386
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->width:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/glass/ui/Window$TrackingRectangle;->height:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/glass/ui/Window$1;)V
    .locals 3

    .prologue
    .line 1384
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$TrackingRectangle;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/glass/ui/Window$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/glass/ui/Window$TrackingRectangle;-><init>()V

    return-void
.end method


# virtual methods
.method contains(II)Z
    .locals 6

    .prologue
    .line 1388
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/Window$TrackingRectangle;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget v3, v3, Lcom/sun/glass/ui/Window$TrackingRectangle;->size:I

    if-lez v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    if-lt v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Window$TrackingRectangle;->x:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/Window$TrackingRectangle;->width:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    if-lt v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/glass/ui/Window$TrackingRectangle;->y:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/glass/ui/Window$TrackingRectangle;->height:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/glass/ui/Window$TrackingRectangle;
    return v0

    .restart local v0    # "this":Lcom/sun/glass/ui/Window$TrackingRectangle;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
