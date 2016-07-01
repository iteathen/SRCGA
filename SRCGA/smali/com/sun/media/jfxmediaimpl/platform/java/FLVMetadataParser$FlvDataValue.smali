.class Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
.super Ljava/lang/Object;
.source "FLVMetadataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlvDataValue"
.end annotation


# static fields
.field static final BOOLEAN:B = 0x1t

.field static final DATE:B = 0xbt

.field static final ECMA_ARRAY:B = 0x8t

.field static final END_OF_DATA:B = 0x9t

.field static final LONG_STRING:B = 0xct

.field static final MOVIE_CLIP:B = 0x4t

.field static final NULL:B = 0x5t

.field static final NUMBER:B = 0x0t

.field static final OBJECT:B = 0x3t

.field static final REFERENCE:B = 0x7t

.field static final STRICT_ARRAY:B = 0xat

.field static final STRING:B = 0x2t

.field static final UNDEFINED:B = 0x6t


# instance fields
.field obj:Ljava/lang/Object;

.field scriptDataObjectEnd:Z

.field type:B


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 307
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;->scriptDataObjectEnd:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$1;)V
    .locals 3

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser$FlvDataValue;-><init>()V

    return-void
.end method
