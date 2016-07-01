.class public Lcom/sun/javafx/geom/Vec4f;
.super Ljava/lang/Object;
.source "Vec4f.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec4f;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec4f;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move v3, p3

    .local v3, "z":F
    move v4, p4

    .local v4, "w":F
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/geom/Vec4f;->x:F

    .line 64
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/geom/Vec4f;->y:F

    .line 65
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/geom/Vec4f;->z:F

    .line 66
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Vec4f;->w:F

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec4f;)V
    .locals 4

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec4f;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec4f;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec4f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec4f;->x:F

    .line 57
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec4f;->y:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec4f;->y:F

    .line 58
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec4f;->z:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec4f;->z:F

    .line 59
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec4f;->w:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec4f;->w:F

    .line 60
    return-void
.end method


# virtual methods
.method public set(Lcom/sun/javafx/geom/Vec4f;)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec4f;
    move-object v1, p1

    .local v1, "v":Lcom/sun/javafx/geom/Vec4f;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec4f;->x:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec4f;->x:F

    .line 71
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec4f;->y:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec4f;->y:F

    .line 72
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec4f;->z:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec4f;->z:F

    .line 73
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Vec4f;->w:F

    iput v3, v2, Lcom/sun/javafx/geom/Vec4f;->w:F

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec4f;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec4f;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec4f;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec4f;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Vec4f;->w:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Vec4f;
    return-object v0
.end method
