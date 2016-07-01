.class Lcom/sun/javafx/font/freetype/OSFreetype;
.super Ljava/lang/Object;
.source "OSFreetype.java"


# static fields
.field static final FT_FACE_FLAG_CID_KEYED:I = 0x1000

.field static final FT_FACE_FLAG_EXTERNAL_STREAM:I = 0x400

.field static final FT_FACE_FLAG_FAST_GLYPHS:I = 0x80

.field static final FT_FACE_FLAG_FIXED_SIZES:I = 0x2

.field static final FT_FACE_FLAG_FIXED_WIDTH:I = 0x4

.field static final FT_FACE_FLAG_GLYPH_NAMES:I = 0x200

.field static final FT_FACE_FLAG_HINTER:I = 0x800

.field static final FT_FACE_FLAG_HORIZONTAL:I = 0x10

.field static final FT_FACE_FLAG_KERNING:I = 0x40

.field static final FT_FACE_FLAG_MULTIPLE_MASTERS:I = 0x100

.field static final FT_FACE_FLAG_SCALABLE:I = 0x1

.field static final FT_FACE_FLAG_SFNT:I = 0x8

.field static final FT_FACE_FLAG_TRICKY:I = 0x2000

.field static final FT_FACE_FLAG_VERTICAL:I = 0x20

.field static final FT_LCD_FILTER_DEFAULT:I = 0x1

.field static final FT_LCD_FILTER_LEGACY:I = 0x10

.field static final FT_LCD_FILTER_LIGHT:I = 0x2

.field static final FT_LCD_FILTER_NONE:I = 0x0

.field static final FT_LOAD_CROP_BITMAP:I = 0x40

.field static final FT_LOAD_DEFAULT:I = 0x0

.field static final FT_LOAD_FORCE_AUTOHINT:I = 0x20

.field static final FT_LOAD_IGNORE_GLOBAL_ADVANCE_WIDTH:I = 0x200

.field static final FT_LOAD_IGNORE_TRANSFORM:I = 0x800

.field static final FT_LOAD_LINEAR_DESIGN:I = 0x2000

.field static final FT_LOAD_MONOCHROME:I = 0x1000

.field static final FT_LOAD_NO_AUTOHINT:I = 0x8000

.field static final FT_LOAD_NO_BITMAP:I = 0x8

.field static final FT_LOAD_NO_HINTING:I = 0x2

.field static final FT_LOAD_NO_RECURSE:I = 0x400

.field static final FT_LOAD_NO_SCALE:I = 0x1

.field static final FT_LOAD_PEDANTIC:I = 0x80

.field static final FT_LOAD_RENDER:I = 0x4

.field static final FT_LOAD_TARGET_LCD:I = 0x30000

.field static final FT_LOAD_TARGET_LCD_V:I = 0x40000

.field static final FT_LOAD_TARGET_LIGHT:I = 0x10000

.field static final FT_LOAD_TARGET_MONO:I = 0x20000

.field static final FT_LOAD_TARGET_NORMAL:I = 0x0

.field static final FT_LOAD_VERTICAL_LAYOUT:I = 0x10

.field static final FT_PIXEL_MODE_GRAY:I = 0x2

.field static final FT_PIXEL_MODE_GRAY2:I = 0x3

.field static final FT_PIXEL_MODE_GRAY4:I = 0x4

.field static final FT_PIXEL_MODE_LCD:I = 0x5

.field static final FT_PIXEL_MODE_LCD_V:I = 0x6

.field static final FT_PIXEL_MODE_MONO:I = 0x1

.field static final FT_PIXEL_MODE_NONE:I = 0x0

.field static final FT_RENDER_MODE_LCD:I = 0x3

.field static final FT_RENDER_MODE_LCD_V:I = 0x4

.field static final FT_RENDER_MODE_LIGHT:I = 0x1

.field static final FT_RENDER_MODE_MONO:I = 0x2

.field static final FT_RENDER_MODE_NORMAL:I = 0x0

.field static final FT_STYLE_FLAG_BOLD:I = 0x2

.field static final FT_STYLE_FLAG_ITALIC:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/sun/javafx/font/freetype/OSFreetype$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/font/freetype/OSFreetype;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final native FT_Done_Face(J)I
.end method

.method static final native FT_Done_FreeType(J)I
.end method

.method static final native FT_Get_Char_Index(JJ)I
.end method

.method static final native FT_Init_FreeType([J)I
.end method

.method static final FT_LOAD_TARGET_MODE(I)I
    .locals 3

    .prologue
    .line 97
    move v0, p0

    .local v0, "x":I
    move v1, v0

    const/16 v2, 0x10

    shr-int/lit8 v1, v1, 0x10

    const/16 v2, 0xf

    and-int/lit8 v1, v1, 0xf

    move v0, v1

    .end local v0    # "x":I
    return v0
.end method

.method static final native FT_Library_SetLcdFilter(JI)I
.end method

.method static final native FT_Library_Version(J[I[I[I)V
.end method

.method static final native FT_Load_Glyph(JII)I
.end method

.method static final native FT_New_Face(J[BJ[J)I
.end method

.method static final native FT_Outline_Decompose(J)Lcom/sun/javafx/geom/Path2D;
.end method

.method static final native FT_Set_Char_Size(JJJII)I
.end method

.method static final native FT_Set_Transform(JLcom/sun/javafx/font/freetype/FT_Matrix;JJ)V
.end method

.method static synthetic access$lambda$0()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/font/freetype/OSFreetype;->lambda$static$245()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static final native getBitmapData(J)[B
.end method

.method static final native getGlyphSlot(J)Lcom/sun/javafx/font/freetype/FT_GlyphSlotRec;
.end method

.method static final native isHarfbuzzEnabled()Z
.end method

.method static final native isPangoEnabled()Z
.end method

.method private static synthetic lambda$static$245()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 37
    const-string v0, "javafx_font_freetype"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
