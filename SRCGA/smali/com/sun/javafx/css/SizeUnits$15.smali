.class final enum Lcom/sun/javafx/css/SizeUnits$15;
.super Lcom/sun/javafx/css/SizeUnits;
.source "SizeUnits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/SizeUnits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 9

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits$15;
    move-object v1, p1

    move v2, p2

    move v3, p3

    .local v3, "absolute":Z
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/css/SizeUnits;-><init>(Ljava/lang/String;IZLcom/sun/javafx/css/SizeUnits$1;)V

    return-void
.end method


# virtual methods
.method public pixels(DDLjavafx/scene/text/Font;)D
    .locals 9

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits$15;
    move-wide v1, p1

    .local v1, "value":D
    move-wide v3, p3

    .local v3, "multiplier_not_used":D
    move-object v5, p5

    .local v5, "font_not_used":Ljavafx/scene/text/Font;
    move-wide v6, v1

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/SizeUnits$15;
    return-wide v0
.end method

.method public points(DDLjavafx/scene/text/Font;)D
    .locals 9

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits$15;
    move-wide v1, p1

    .local v1, "value":D
    move-wide v3, p3

    .local v3, "multiplier_not_used":D
    move-object v5, p5

    .local v5, "font_not_used":Ljavafx/scene/text/Font;
    move-wide v6, v1

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/SizeUnits$15;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits$15;
    const-string v1, "ms"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/SizeUnits$15;
    return-object v0
.end method
