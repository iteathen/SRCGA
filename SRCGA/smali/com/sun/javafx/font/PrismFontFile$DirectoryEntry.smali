.class Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
.super Ljava/lang/Object;
.source "PrismFontFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/font/PrismFontFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DirectoryEntry"
.end annotation


# instance fields
.field length:I

.field offset:I

.field tag:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/PrismFontFile$DirectoryEntry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
