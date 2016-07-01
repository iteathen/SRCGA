.class public abstract Lcom/sun/javafx/geom/Crossings;
.super Ljava/lang/Object;
.source "Crossings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/geom/Crossings$EvenOdd;
    }
.end annotation


# static fields
.field public static final debug:Z


# instance fields
.field limit:I

.field xhi:D

.field xlo:D

.field yhi:D

.field ylo:D

.field yranges:[D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 13

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Crossings;
    move-wide v1, p1

    .local v1, "xlo":D
    move-wide/from16 v3, p3

    .local v3, "ylo":D
    move-wide/from16 v5, p5

    .local v5, "xhi":D
    move-wide/from16 v7, p7

    .local v7, "yhi":D
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Lcom/sun/javafx/geom/Crossings;->limit:I

    .line 35
    move-object v9, v0

    const/16 v10, 0xa

    new-array v10, v10, [D

    iput-object v10, v9, Lcom/sun/javafx/geom/Crossings;->yranges:[D

    .line 40
    move-object v9, v0

    move-wide v10, v1

    iput-wide v10, v9, Lcom/sun/javafx/geom/Crossings;->xlo:D

    .line 41
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Lcom/sun/javafx/geom/Crossings;->ylo:D

    .line 42
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Lcom/sun/javafx/geom/Crossings;->xhi:D

    .line 43
    move-object v9, v0

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/javafx/geom/Crossings;->yhi:D

    .line 44
    return-void
.end method

.method public static findCrossings(Ljava/util/Vector;DDDD)Lcom/sun/javafx/geom/Crossings;
    .locals 23

    .prologue
    .line 83
    move-object/from16 v0, p0

    .local v0, "curves":Ljava/util/Vector;
    move-wide/from16 v1, p1

    .local v1, "xlo":D
    move-wide/from16 v3, p3

    .local v3, "ylo":D
    move-wide/from16 v5, p5

    .local v5, "xhi":D
    move-wide/from16 v7, p7

    .local v7, "yhi":D
    new-instance v12, Lcom/sun/javafx/geom/Crossings$EvenOdd;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    invoke-direct/range {v13 .. v21}, Lcom/sun/javafx/geom/Crossings$EvenOdd;-><init>(DDDD)V

    move-object v9, v12

    .line 84
    .local v9, "cross":Lcom/sun/javafx/geom/Crossings;
    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v12

    move-object v10, v12

    .line 85
    .local v10, "enum_":Ljava/util/Enumeration;
    :goto_0
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 86
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/geom/Curve;

    move-object v11, v12

    .line 87
    .local v11, "c":Lcom/sun/javafx/geom/Curve;
    move-object v12, v11

    move-object v13, v9

    invoke-virtual {v12, v13}, Lcom/sun/javafx/geom/Curve;->accumulateCrossings(Lcom/sun/javafx/geom/Crossings;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 88
    const/4 v12, 0x0

    move-object v0, v12

    .line 94
    .end local v0    # "curves":Ljava/util/Vector;
    .end local v11    # "c":Lcom/sun/javafx/geom/Curve;
    :goto_1
    return-object v0

    .line 90
    .restart local v0    # "curves":Ljava/util/Vector;
    .restart local v11    # "c":Lcom/sun/javafx/geom/Curve;
    :cond_0
    goto :goto_0

    .line 94
    .end local v11    # "c":Lcom/sun/javafx/geom/Curve;
    :cond_1
    move-object v12, v9

    move-object v0, v12

    goto :goto_1
.end method


# virtual methods
.method public abstract covers(DD)Z
.end method

.method public final getXHi()D
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Crossings;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Crossings;->xhi:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Crossings;
    return-wide v0
.end method

.method public final getXLo()D
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Crossings;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Crossings;->xlo:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Crossings;
    return-wide v0
.end method

.method public final getYHi()D
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Crossings;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Crossings;->yhi:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Crossings;
    return-wide v0
.end method

.method public final getYLo()D
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Crossings;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/geom/Crossings;->ylo:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Crossings;
    return-wide v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Crossings;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/Crossings;->limit:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Crossings;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/Crossings;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public print()V
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Crossings;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Crossings ["

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  bounds = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Crossings;->ylo:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/Crossings;->yhi:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Crossings;->limit:I

    if-ge v2, v3, :cond_0

    .line 68
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Crossings;->yranges:[D

    move v5, v1

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/Crossings;->yranges:[D

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 70
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public abstract record(DDI)V
.end method
