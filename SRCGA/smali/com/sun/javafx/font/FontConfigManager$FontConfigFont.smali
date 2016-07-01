.class public Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
.super Ljava/lang/Object;
.source "FontConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/FontConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontConfigFont"
.end annotation


# instance fields
.field public familyName:Ljava/lang/String;

.field public fontFile:Ljava/lang/String;

.field public fullName:Ljava/lang/String;

.field public styleStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/FontConfigManager$FontConfigFont;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
