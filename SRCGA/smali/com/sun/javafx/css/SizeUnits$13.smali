.class final enum Lcom/sun/javafx/css/SizeUnits$13;
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
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits$13;
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
    .locals 11

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits$13;
    move-wide v1, p1

    .local v1, "value":D
    move-wide v3, p3

    .local v3, "multiplier_not_used":D
    move-object/from16 v5, p5

    .local v5, "font_not_used":Ljavafx/scene/text/Font;
    move-wide v6, v1

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/sun/javafx/css/SizeUnits;->access$200(D)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/SizeUnits$13;
    return-wide v0
.end method

.method public points(DDLjavafx/scene/text/Font;)D
    .locals 11

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits$13;
    move-wide v1, p1

    .local v1, "value":D
    move-wide v3, p3

    .local v3, "multiplier_not_used":D
    move-object/from16 v5, p5

    .local v5, "font_not_used":Ljavafx/scene/text/Font;
    move-wide v6, v1

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/sun/javafx/css/SizeUnits;->access$200(D)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/css/SizeUnits$13;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/SizeUnits$13;
    const-string v1, "turn"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/SizeUnits$13;
    return-object v0
.end method
