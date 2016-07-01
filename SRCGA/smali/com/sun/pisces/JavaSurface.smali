.class public final Lcom/sun/pisces/JavaSurface;
.super Lcom/sun/pisces/AbstractSurface;
.source "JavaSurface.java"


# instance fields
.field private dataBuffer:Ljava/nio/IntBuffer;

.field private dataInt:[I


# direct methods
.method public constructor <init>([IIII)V
    .locals 9

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/JavaSurface;
    move-object v1, p1

    .local v1, "dataInt":[I
    move v2, p2

    .local v2, "dataType":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move v6, v3

    move v7, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/pisces/AbstractSurface;-><init>(II)V

    .line 38
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/pisces/JavaSurface;->dataInt:[I

    .line 39
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/pisces/JavaSurface;->dataInt:[I

    invoke-static {v6}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/pisces/JavaSurface;->dataBuffer:Ljava/nio/IntBuffer;

    .line 41
    move-object v5, v0

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/pisces/JavaSurface;->initialize(III)V

    .line 42
    return-void
.end method

.method private native initialize(III)V
.end method


# virtual methods
.method public getDataIntBuffer()Ljava/nio/IntBuffer;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/pisces/JavaSurface;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/pisces/JavaSurface;->dataBuffer:Ljava/nio/IntBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/pisces/JavaSurface;
    return-object v0
.end method
