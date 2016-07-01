.class public Lcom/sun/javafx/geom/Vec4d;
.super Ljava/lang/Object;
.source "Vec4d.java"


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec4d;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 13

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Vec4d;
    move-wide v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "z":D
    move-wide/from16 v7, p7

    .local v7, "w":D
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v9, v0

    move-wide v10, v1

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec4d;->x:D

    .line 64
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec4d;->y:D

    .line 65
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec4d;->z:D

    .line 66
    move-object v9, v0

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Vec4d;->w:D

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/Vec4d;)V
    .locals 6

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec4d;
    move-object v2, p1

    .local v2, "v":Lcom/sun/javafx/geom/Vec4d;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec4d;->x:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec4d;->x:D

    .line 57
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec4d;->y:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec4d;->y:D

    .line 58
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec4d;->z:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec4d;->z:D

    .line 59
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec4d;->w:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec4d;->w:D

    .line 60
    return-void
.end method


# virtual methods
.method public set(Lcom/sun/javafx/geom/Vec4d;)V
    .locals 6

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Vec4d;
    move-object v2, p1

    .local v2, "v":Lcom/sun/javafx/geom/Vec4d;
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec4d;->x:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec4d;->x:D

    .line 71
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec4d;->y:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec4d;->y:D

    .line 72
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec4d;->z:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec4d;->z:D

    .line 73
    move-object v3, v1

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/geom/Vec4d;->w:D

    iput-wide v4, v3, Lcom/sun/javafx/geom/Vec4d;->w:D

    .line 74
    return-void
.end method
