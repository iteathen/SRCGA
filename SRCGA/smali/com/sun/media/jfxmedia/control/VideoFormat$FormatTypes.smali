.class public Lcom/sun/media/jfxmedia/control/VideoFormat$FormatTypes;
.super Ljava/lang/Object;
.source "VideoFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/control/VideoFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatTypes"
.end annotation


# static fields
.field public static final FORMAT_TYPE_ARGB:I = 0x1

.field public static final FORMAT_TYPE_BGRA_PRE:I = 0x2

.field public static final FORMAT_TYPE_YCBCR_420P:I = 0x64

.field public static final FORMAT_TYPE_YCBCR_422:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/control/VideoFormat$FormatTypes;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
