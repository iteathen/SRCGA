.class Lcom/sun/javafx/font/freetype/FTDisposer;
.super Ljava/lang/Object;
.source "FTDisposer.java"

# interfaces
.implements Lcom/sun/javafx/font/DisposerRecord;


# instance fields
.field face:J

.field library:J


# direct methods
.method constructor <init>(JJ)V
    .locals 9

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/FTDisposer;
    move-wide v1, p1

    .local v1, "library":J
    move-wide v3, p3

    .local v3, "face":J
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Lcom/sun/javafx/font/freetype/FTDisposer;->library:J

    .line 37
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Lcom/sun/javafx/font/freetype/FTDisposer;->face:J

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 8

    .prologue
    .line 41
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/font/freetype/FTDisposer;
    move-object v6, p0

    monitor-enter v6

    move-object v2, v1

    :try_start_0
    iget-wide v2, v2, Lcom/sun/javafx/font/freetype/FTDisposer;->face:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 42
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/font/freetype/FTDisposer;->face:J

    invoke-static {v2, v3}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Done_Face(J)I

    move-result v2

    .line 43
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v2, :cond_0

    .line 44
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done Face="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/font/freetype/FTDisposer;->face:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 46
    :cond_0
    move-object v2, v1

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/sun/javafx/font/freetype/FTDisposer;->face:J

    .line 48
    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/font/freetype/FTDisposer;->library:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 49
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/font/freetype/FTDisposer;->library:J

    invoke-static {v2, v3}, Lcom/sun/javafx/font/freetype/OSFreetype;->FT_Done_FreeType(J)I

    move-result v2

    .line 50
    sget-boolean v2, Lcom/sun/javafx/font/PrismFontFactory;->debugFonts:Z

    if-eqz v2, :cond_2

    .line 51
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done Library="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/font/freetype/FTDisposer;->library:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    :cond_2
    move-object v2, v1

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/sun/javafx/font/freetype/FTDisposer;->library:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_3
    monitor-exit v6

    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v6

    .end local v1    # "this":Lcom/sun/javafx/font/freetype/FTDisposer;
    throw v1
.end method
