.class abstract Lcom/sun/javafx/geom/Path2D$Iterator;
.super Ljava/lang/Object;
.source "Path2D.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/Path2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Iterator"
.end annotation


# instance fields
.field path:Lcom/sun/javafx/geom/Path2D;

.field pointIdx:I

.field typeIdx:I


# direct methods
.method constructor <init>(Lcom/sun/javafx/geom/Path2D;)V
    .locals 4

    .prologue
    .line 2275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$Iterator;
    move-object v1, p1

    .local v1, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2276
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/geom/Path2D$Iterator;->path:Lcom/sun/javafx/geom/Path2D;

    .line 2277
    return-void
.end method


# virtual methods
.method public getWindingRule()I
    .locals 2

    .prologue
    .line 2280
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$Iterator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/Path2D$Iterator;->path:Lcom/sun/javafx/geom/Path2D;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/Path2D;->getWindingRule()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$Iterator;
    return v0
.end method

.method public isDone()Z
    .locals 3

    .prologue
    .line 2284
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$Iterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Path2D$Iterator;->typeIdx:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D$Iterator;->path:Lcom/sun/javafx/geom/Path2D;

    iget v2, v2, Lcom/sun/javafx/geom/Path2D;->numTypes:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Path2D$Iterator;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Path2D$Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 9

    .prologue
    .line 2288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Path2D$Iterator;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D$Iterator;->path:Lcom/sun/javafx/geom/Path2D;

    iget-object v2, v2, Lcom/sun/javafx/geom/Path2D;->pointTypes:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/geom/Path2D$Iterator;->typeIdx:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/geom/Path2D$Iterator;->typeIdx:I

    aget-byte v2, v2, v3

    move v1, v2

    .line 2289
    .local v1, "type":I
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/javafx/geom/Path2D$Iterator;->pointIdx:I

    sget-object v4, Lcom/sun/javafx/geom/Path2D;->curvecoords:[I

    move v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/geom/Path2D$Iterator;->pointIdx:I

    .line 2290
    return-void
.end method
