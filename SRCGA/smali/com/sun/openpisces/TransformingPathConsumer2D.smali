.class public abstract Lcom/sun/openpisces/TransformingPathConsumer2D;
.super Ljava/lang/Object;
.source "TransformingPathConsumer2D.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathConsumer2D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaTransformFilter;,
        Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;,
        Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;,
        Lcom/sun/openpisces/TransformingPathConsumer2D$ScaleTranslateFilter;,
        Lcom/sun/openpisces/TransformingPathConsumer2D$TranslateFilter;,
        Lcom/sun/openpisces/TransformingPathConsumer2D$FilterSet;
    }
.end annotation


# instance fields
.field protected out:Lcom/sun/javafx/geom/PathConsumer2D;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/PathConsumer2D;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D;
    move-object v1, p1

    .local v1, "out":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/openpisces/TransformingPathConsumer2D;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    .line 36
    return-void
.end method


# virtual methods
.method public setConsumer(Lcom/sun/javafx/geom/PathConsumer2D;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D;
    move-object v1, p1

    .local v1, "out":Lcom/sun/javafx/geom/PathConsumer2D;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/openpisces/TransformingPathConsumer2D;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    .line 40
    return-void
.end method
