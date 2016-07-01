.class Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;
.super Ljava/lang/Object;
.source "CachingShapeRep.java"

# interfaces
.implements Lcom/sun/prism/impl/Disposer$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/ps/CachingShapeRepState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSRDisposerRecord"
.end annotation


# instance fields
.field private texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;


# direct methods
.method private constructor <init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)V
    .locals 4

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;
    move-object v1, p1

    .local v1, "texData":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 586
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    .line 587
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/prism/impl/ps/CachingShapeRepState$1;)V
    .locals 5

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/prism/impl/ps/CachingShapeRepState$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;-><init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    if-eqz v1, :cond_0

    .line 592
    # getter for: Lcom/sun/prism/impl/ps/CachingShapeRepState;->maskCache:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    invoke-static {}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->access$1100()Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    invoke-virtual {v1, v2}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->unref(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)V

    .line 593
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CSRDisposerRecord;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    .line 595
    :cond_0
    return-void
.end method
