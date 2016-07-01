.class public Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
.super Ljava/lang/Object;
.source "FontConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/FontConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FcCompFont"
.end annotation


# instance fields
.field public allFonts:[Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

.field public fcFamily:Ljava/lang/String;

.field public fcName:Ljava/lang/String;

.field public firstFont:Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;

.field public style:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontConfigManager$FcCompFont;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
