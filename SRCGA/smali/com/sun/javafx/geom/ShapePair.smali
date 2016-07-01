.class public abstract Lcom/sun/javafx/geom/ShapePair;
.super Lcom/sun/javafx/geom/Shape;
.source "ShapePair.java"


# static fields
.field public static final INCLUDES_I_NOT_O:I = 0x2

.field public static final INCLUDES_NEITHER:I = 0x8

.field public static final INCLUDES_O_AND_I:I = 0x4

.field public static final INCLUDES_O_NOT_I:I = 0x1

.field public static final TYPE_INTERSECT:I = 0x4

.field public static final TYPE_SUBTRACT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ShapePair;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/geom/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCombinationType()I
.end method

.method public abstract getInnerShape()Lcom/sun/javafx/geom/Shape;
.end method

.method public abstract getOuterShape()Lcom/sun/javafx/geom/Shape;
.end method
