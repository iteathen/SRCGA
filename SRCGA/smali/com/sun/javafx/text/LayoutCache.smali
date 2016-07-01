.class Lcom/sun/javafx/text/LayoutCache;
.super Ljava/lang/Object;
.source "LayoutCache.java"


# instance fields
.field advances:[F

.field analysis:I

.field font:Lcom/sun/javafx/font/PGFont;

.field glyphs:[I

.field layoutHeight:F

.field layoutWidth:F

.field lines:[Lcom/sun/javafx/text/TextLine;

.field runCount:I

.field runs:[Lcom/sun/javafx/text/TextRun;

.field text:[C

.field valid:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/text/LayoutCache;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
