.class final Ljava/time/format/DateTimeFormatterBuilder$3;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 3872
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$3;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 3872
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$3;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder$3;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$3;
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 3875
    move-object v0, p0

    .local v0, "this":Ljava/time/format/DateTimeFormatterBuilder$3;
    move-object v1, p1

    .local v1, "str1":Ljava/lang/String;
    move-object v2, p2

    .local v2, "str2":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$3;
    return v0

    .restart local v0    # "this":Ljava/time/format/DateTimeFormatterBuilder$3;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0
.end method
