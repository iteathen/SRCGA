.class public final Lcom/sun/pisces/RendererBase;
.super Ljava/lang/Object;
.source "RendererBase.java"


# static fields
.field public static final COMPOSITE_CLEAR:I = 0x0

.field public static final COMPOSITE_SRC:I = 0x1

.field public static final COMPOSITE_SRC_OVER:I = 0x2

.field public static final IMAGE_FRAC_EDGE_KEEP:I = 0x0

.field public static final IMAGE_FRAC_EDGE_PAD:I = 0x1

.field public static final IMAGE_FRAC_EDGE_TRIM:I = 0x2

.field public static final IMAGE_MODE_MULTIPLY:I = 0x2

.field public static final IMAGE_MODE_NORMAL:I = 0x1

.field public static final TYPE_INT_ARGB_PRE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/RendererBase;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
