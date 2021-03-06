

(c-define-type GLenum unsigned-int)
(c-define-type GLboolean unsigned-char)
(c-define-type GLbitfield unsigned-int)
(c-define-type GLvoid void)
(c-define-type GLbyte signed-char)
(c-define-type GLshort short)
(c-define-type GLint int)
(c-define-type GLubyte unsigned-char)
(c-define-type GLushort unsigned-short)
(c-define-type GLuint unsigned-int)
(c-define-type GLsizei int)
(c-define-type GLfloat float)
(c-define-type GLclampf float)
(c-define-type GLdouble double)
(c-define-type GLclampd double)

(c-define-type GLenum* (pointer GLenum))
(c-define-type GLboolean* (pointer GLboolean))
(c-define-type GLbitfield* (pointer GLbitfield))
(c-define-type GLvoid* (pointer GLvoid))
(c-define-type GLbyte* (pointer GLbyte))
(c-define-type GLshort* (pointer GLshort))
(c-define-type GLint* (pointer GLint))
(c-define-type GLubyte* (pointer GLubyte))
(c-define-type GLushort* (pointer GLushort))
(c-define-type GLuint* (pointer GLuint))
(c-define-type GLsizei* (pointer GLsizei))
(c-define-type GLfloat* (pointer GLfloat))
(c-define-type GLclampf* (pointer GLclampf))
(c-define-type GLdouble* (pointer GLdouble))
(c-define-type GLclampd* (pointer GLclampd))

(c-define-type GLvoid** (pointer GLvoid*))

; /* Boolean values* /
(define GL_FALSE #x0)
(define GL_TRUE #x1)

; /* Data types* /
(define GL_BYTE #x1400)
(define GL_UNSIGNED_BYTE #x1401)
(define GL_SHORT #x1402)
(define GL_UNSIGNED_SHORT #x1403)
(define GL_INT #x1404)
(define GL_UNSIGNED_INT #x1405)
(define GL_FLOAT #x1406)
(define GL_2_BYTES #x1407)
(define GL_3_BYTES #x1408)
(define GL_4_BYTES #x1409)
(define GL_DOUBLE #x140A)

; /* Primitives* /
(define GL_POINTS #x0000)
(define GL_LINES #x0001)
(define GL_LINE_LOOP #x0002)				
(define GL_LINE_STRIP #x0003)
(define GL_TRIANGLES #x0004)
(define GL_TRIANGLE_STRIP #x0005)
(define GL_TRIANGLE_FAN #x0006)
(define GL_QUADS #x0007)
(define GL_QUAD_STRIP #x0008)
(define GL_POLYGON #x0009)
(define GL_VERTEX_ARRAY	#x8074)

; /* Arrays* /
(define GL_NORMAL_ARRAY #x8075)
(define GL_COLOR_ARRAY #x8076)
(define GL_INDEX_ARRAY #x8077)
(define GL_TEXTURE_COORD_ARRAY #x8078)
(define GL_EDGE_FLAG_ARRAY #x8079)
(define GL_VERTEX_ARRAY_SIZE #x807A)
(define GL_VERTEX_ARRAY_TYPE #x807B)
(define GL_VERTEX_ARRAY_STRIDE #x807C)
(define GL_NORMAL_ARRAY_TYPE #x807E)
(define GL_NORMAL_ARRAY_STRIDE #x807F)
(define GL_COLOR_ARRAY_SIZE #x8081)
(define GL_COLOR_ARRAY_TYPE #x8082)
(define GL_COLOR_ARRAY_STRIDE #x8083)
(define GL_INDEX_ARRAY_TYPE #x8085)
(define GL_INDEX_ARRAY_STRIDE #x8086)
(define GL_TEXTURE_COORD_ARRAY_SIZE #x8088)
(define GL_TEXTURE_COORD_ARRAY_TYPE #x8089)
(define GL_TEXTURE_COORD_ARRAY_STRIDE #x808A)
(define GL_EDGE_FLAG_ARRAY_STRIDE #x808C)
(define GL_VERTEX_ARRAY_POINTER #x808E)
(define GL_NORMAL_ARRAY_POINTER #x808F)
(define GL_COLOR_ARRAY_POINTER #x8090)
(define GL_INDEX_ARRAY_POINTER #x8091)
(define GL_TEXTURE_COORD_ARRAY_POINTER #x8092)
(define GL_EDGE_FLAG_ARRAY_POINTER #x8093)
(define GL_V2F #x2A20)
(define GL_V3F #x2A21)
(define GL_C4UB_V2F #x2A22)
(define GL_C4UB_V3F #x2A23)
(define GL_C3F_V3F #x2A24)
(define GL_N3F_V3F #x2A25)(define GL_C4F_N3F_V3F #x2A26)
(define GL_T2F_V3F #x2A27)
(define GL_T4F_V4F #x2A28)
(define GL_T2F_C4UB_V3F #x2A29)
(define GL_T2F_C3F_V3F #x2A2A)
(define GL_T2F_N3F_V3F #x2A2B)
(define GL_T2F_C4F_N3F_V3F #x2A2C)
(define GL_T4F_C4F_N3F_V4F #x2A2D)

; /* Matrix Mode* /
(define GL_MATRIX_MODE #x0BA0)
(define GL_MODELVIEW #x1700)
(define GL_PROJECTION #x1701)
(define GL_TEXTURE #x1702)

; /* Points* /
(define GL_POINT_SMOOTH #x0B10)
(define GL_POINT_SIZE #x0B11)
(define GL_POINT_SIZE_GRANULARITY #x0B13)
(define GL_POINT_SIZE_RANGE #x0B12)

; /* Lines* /
(define GL_LINE_SMOOTH #x0B20)
(define GL_LINE_STIPPLE #x0B24)
(define GL_LINE_STIPPLE_PATTERN #x0B25)
(define GL_LINE_STIPPLE_REPEAT #x0B26)
(define GL_LINE_WIDTH #x0B21)
(define GL_LINE_WIDTH_GRANULARITY #x0B23)
(define GL_LINE_WIDTH_RANGE #x0B22)

; /* Polygons* /
(define GL_POINT #x1B00)
(define GL_LINE #x1B01)
(define GL_FILL #x1B02)
(define GL_CW #x0900)
(define GL_CCW #x0901)
(define GL_FRONT #x0404)
(define GL_BACK #x0405)
(define GL_POLYGON_MODE #x0B40)
(define GL_POLYGON_SMOOTH #x0B41)
(define GL_POLYGON_STIPPLE #x0B42)
(define GL_EDGE_FLAG #x0B43)
(define GL_CULL_FACE #x0B44)
(define GL_CULL_FACE_MODE #x0B45)
(define GL_FRONT_FACE #x0B46)(define GL_POLYGON_OFFSET_FACTOR #x8038)
(define GL_POLYGON_OFFSET_UNITS #x2A00)
(define GL_POLYGON_OFFSET_POINT #x2A01)
(define GL_POLYGON_OFFSET_LINE #x2A02)
(define GL_POLYGON_OFFSET_FILL #x8037)

; /* Display Lists* /
(define GL_COMPILE #x1300)
(define GL_COMPILE_AND_EXECUTE #x1301)
(define GL_LIST_BASE #x0B32)
(define GL_LIST_INDEX #x0B33)
(define GL_LIST_MODE #x0B30)

; /* Depth buffer* /
(define GL_NEVER #x0200)
(define GL_LESS #x0201)
(define GL_EQUAL #x0202)
(define GL_LEQUAL #x0203)
(define GL_GREATER #x0204)
(define GL_NOTEQUAL #x0205)
(define GL_GEQUAL #x0206)
(define GL_ALWAYS #x0207)
(define GL_DEPTH_TEST #x0B71)
(define GL_DEPTH_BITS #x0D56)
(define GL_DEPTH_CLEAR_VALUE #x0B73)
(define GL_DEPTH_FUNC #x0B74)
(define GL_DEPTH_RANGE #x0B70)
(define GL_DEPTH_WRITEMASK #x0B72)
(define GL_DEPTH_COMPONENT #x1902)

; /* Lighting* /
(define GL_LIGHTING #x0B50)
(define GL_LIGHT0 #x4000)
(define GL_LIGHT1 #x4001)
(define GL_LIGHT2 #x4002)
(define GL_LIGHT3 #x4003)
(define GL_LIGHT4 #x4004)
(define GL_LIGHT5 #x4005)
(define GL_LIGHT6 #x4006)
(define GL_LIGHT7 #x4007)
(define GL_SPOT_EXPONENT #x1205)
(define GL_SPOT_CUTOFF #x1206)
(define GL_CONSTANT_ATTENUATION #x1207)
(define GL_LINEAR_ATTENUATION #x1208)
(define GL_QUADRATIC_ATTENUATION #x1209)
(define GL_AMBIENT #x1200)
(define GL_DIFFUSE #x1201)
(define GL_SPECULAR #x1202)
(define GL_SHININESS #x1601)
(define GL_EMISSION #x1600)
(define GL_POSITION #x1203)
(define GL_SPOT_DIRECTION #x1204)
(define GL_AMBIENT_AND_DIFFUSE #x1602)
(define GL_COLOR_INDEXES #x1603)
(define GL_LIGHT_MODEL_TWO_SIDE #x0B52)
(define GL_LIGHT_MODEL_LOCAL_VIEWER #x0B51)
(define GL_LIGHT_MODEL_AMBIENT #x0B53)
(define GL_FRONT_AND_BACK #x0408)
(define GL_SHADE_MODEL #x0B54)
(define GL_FLAT #x1D00)
(define GL_SMOOTH #x1D01)
(define GL_COLOR_MATERIAL #x0B57)
(define GL_COLOR_MATERIAL_FACE #x0B55)
(define GL_COLOR_MATERIAL_PARAMETER #x0B56)
(define GL_NORMALIZE #x0BA1)

; /* User clipping planes* /
(define GL_CLIP_PLANE0 #x3000)
(define GL_CLIP_PLANE1 #x3001)
(define GL_CLIP_PLANE2 #x3002)
(define GL_CLIP_PLANE3 #x3003)
(define GL_CLIP_PLANE4 #x3004)
(define GL_CLIP_PLANE5 #x3005)

; /* Accumulation buffer* /
(define GL_ACCUM_RED_BITS #x0D58)
(define GL_ACCUM_GREEN_BITS #x0D59)
(define GL_ACCUM_BLUE_BITS #x0D5A)
(define GL_ACCUM_ALPHA_BITS #x0D5B)
(define GL_ACCUM_CLEAR_VALUE #x0B80)
(define GL_ACCUM #x0100)
(define GL_ADD #x0104)
(define GL_LOAD #x0101)
(define GL_MULT #x0103)					
(define GL_RETURN #x0102)

; /* Alpha testing* /
(define GL_ALPHA_TEST #x0BC0)
(define GL_ALPHA_TEST_REF #x0BC2)
(define GL_ALPHA_TEST_FUNC #x0BC1)

; /* Blending* /
(define GL_BLEND #x0BE2)
(define GL_BLEND_SRC #x0BE1)
(define GL_BLEND_DST #x0BE0)
(define GL_ZERO #x0)
(define GL_ONE #x1)
(define GL_SRC_COLOR #x0300)
(define GL_ONE_MINUS_SRC_COLOR #x0301)
(define GL_SRC_ALPHA #x0302)
(define GL_ONE_MINUS_SRC_ALPHA #x0303)
(define GL_DST_ALPHA #x0304)
(define GL_ONE_MINUS_DST_ALPHA #x0305)
(define GL_DST_COLOR #x0306)
(define GL_ONE_MINUS_DST_COLOR #x0307)			
(define GL_SRC_ALPHA_SATURATE #x0308)

; /* Render Mode* /
(define GL_FEEDBACK #x1C01)
(define GL_RENDER #x1C00)
(define GL_SELECT #x1C02)

; /* Feedback* /
(define GL_2D #x0600)
(define GL_3D #x0601)
(define GL_3D_COLOR #x0602)
(define GL_3D_COLOR_TEXTURE #x0603)
(define GL_4D_COLOR_TEXTURE #x0604)
(define GL_POINT_TOKEN #x0701)
(define GL_LINE_TOKEN #x0702)
(define GL_LINE_RESET_TOKEN #x0707)
(define GL_POLYGON_TOKEN #x0703)
(define GL_BITMAP_TOKEN #x0704)
(define GL_DRAW_PIXEL_TOKEN #x0705)
(define GL_COPY_PIXEL_TOKEN #x0706)
(define GL_PASS_THROUGH_TOKEN #x0700)
(define GL_FEEDBACK_BUFFER_POINTER #x0DF0)
(define GL_FEEDBACK_BUFFER_SIZE #x0DF1)
(define GL_FEEDBACK_BUFFER_TYPE #x0DF2)

; /* Selection* /
(define GL_SELECTION_BUFFER_POINTER #x0DF3)
(define GL_SELECTION_BUFFER_SIZE #x0DF4)

; /* Fog* /
(define GL_FOG #x0B60)
(define GL_FOG_MODE #x0B65)
(define GL_FOG_DENSITY #x0B62)
(define GL_FOG_COLOR #x0B66)
(define GL_FOG_INDEX #x0B61)
(define GL_FOG_START #x0B63)
(define GL_FOG_END #x0B64)
(define GL_LINEAR #x2601)
(define GL_EXP #x0800)
(define GL_EXP2 #x0801)

; /* Logic Ops* /
(define GL_LOGIC_OP #x0BF1)
(define GL_INDEX_LOGIC_OP #x0BF1)
(define GL_COLOR_LOGIC_OP #x0BF2)
(define GL_LOGIC_OP_MODE #x0BF0)
(define GL_CLEAR #x1500)
(define GL_SET #x150F)
(define GL_COPY #x1503)
(define GL_COPY_INVERTED #x150C)
(define GL_NOOP #x1505)
(define GL_INVERT #x150A)
(define GL_AND #x1501)
(define GL_NAND #x150E)
(define GL_OR #x1507)
(define GL_NOR #x1508)
(define GL_XOR #x1506)
(define GL_EQUIV #x1509)
(define GL_AND_REVERSE #x1502)
(define GL_AND_INVERTED #x1504)
(define GL_OR_REVERSE #x150B)
(define GL_OR_INVERTED #x150D)

; /* Stencil* /
(define GL_STENCIL_BITS #x0D57)
(define GL_STENCIL_TEST #x0B90)
(define GL_STENCIL_CLEAR_VALUE #x0B91)
(define GL_STENCIL_FUNC #x0B92)
(define GL_STENCIL_VALUE_MASK #x0B93)
(define GL_STENCIL_FAIL #x0B94)
(define GL_STENCIL_PASS_DEPTH_FAIL #x0B95)
(define GL_STENCIL_PASS_DEPTH_PASS #x0B96)
(define GL_STENCIL_REF #x0B97)
(define GL_STENCIL_WRITEMASK #x0B98)
(define GL_STENCIL_INDEX #x1901)
(define GL_KEEP #x1E00)
(define GL_REPLACE #x1E01)
(define GL_INCR #x1E02)
(define GL_DECR #x1E03)

; /* Buffers, Pixel Drawing/Reading* /
(define GL_NONE #x0)
(define GL_LEFT #x0406)
(define GL_RIGHT #x0407)
(define GL_FRONT_LEFT #x0400)
(define GL_FRONT_RIGHT #x0401)
(define GL_BACK_LEFT #x0402)
(define GL_BACK_RIGHT #x0403)
(define GL_AUX0 #x0409)
(define GL_AUX1 #x040A)
(define GL_AUX2 #x040B)
(define GL_AUX3 #x040C)
(define GL_COLOR_INDEX #x1900)
(define GL_RED #x1903)
(define GL_GREEN #x1904)
(define GL_BLUE #x1905)
(define GL_ALPHA #x1906)
(define GL_LUMINANCE #x1909)
(define GL_LUMINANCE_ALPHA #x190A)
(define GL_ALPHA_BITS #x0D55)
(define GL_RED_BITS #x0D52)
(define GL_GREEN_BITS #x0D53)
(define GL_BLUE_BITS #x0D54)
(define GL_INDEX_BITS #x0D51)
(define GL_SUBPIXEL_BITS #x0D50)
(define GL_AUX_BUFFERS #x0C00)
(define GL_READ_BUFFER #x0C02)
(define GL_DRAW_BUFFER #x0C01)
(define GL_DOUBLEBUFFER #x0C32)
(define GL_STEREO #x0C33)
(define GL_BITMAP #x1A00)
(define GL_COLOR #x1800)
(define GL_DEPTH #x1801)
(define GL_STENCIL #x1802)
(define GL_DITHER #x0BD0)
(define GL_RGB #x1907)
(define GL_RGBA #x1908)

; /* Implementation limits* /
(define GL_MAX_LIST_NESTING #x0B31)
(define GL_MAX_EVAL_ORDER #x0D30)
(define GL_MAX_LIGHTS #x0D31)
(define GL_MAX_CLIP_PLANES #x0D32)
(define GL_MAX_TEXTURE_SIZE #x0D33)
(define GL_MAX_PIXEL_MAP_TABLE #x0D34)
(define GL_MAX_ATTRIB_STACK_DEPTH #x0D35)
(define GL_MAX_MODELVIEW_STACK_DEPTH #x0D36)		
(define GL_MAX_NAME_STACK_DEPTH #x0D37)
(define GL_MAX_PROJECTION_STACK_DEPTH #x0D38)
(define GL_MAX_TEXTURE_STACK_DEPTH #x0D39)
(define GL_MAX_VIEWPORT_DIMS #x0D3A)
(define GL_MAX_CLIENT_ATTRIB_STACK_DEPTH #x0D3B)

; /* Gets* /
(define GL_ATTRIB_STACK_DEPTH #x0BB0)
(define GL_CLIENT_ATTRIB_STACK_DEPTH #x0BB1)
(define GL_COLOR_CLEAR_VALUE #x0C22)
(define GL_COLOR_WRITEMASK #x0C23)
(define GL_CURRENT_INDEX #x0B01)
(define GL_CURRENT_COLOR #x0B00)
(define GL_CURRENT_NORMAL #x0B02)
(define GL_CURRENT_RASTER_COLOR #x0B04)
(define GL_CURRENT_RASTER_DISTANCE #x0B09)
(define GL_CURRENT_RASTER_INDEX #x0B05)
(define GL_CURRENT_RASTER_POSITION #x0B07)
(define GL_CURRENT_RASTER_TEXTURE_COORDS #x0B06)
(define GL_CURRENT_RASTER_POSITION_VALID #x0B08)
(define GL_CURRENT_TEXTURE_COORDS #x0B03)
(define GL_INDEX_CLEAR_VALUE #x0C20)
(define GL_INDEX_MODE #x0C30)
(define GL_INDEX_WRITEMASK #x0C21)
(define GL_MODELVIEW_MATRIX #x0BA6)
(define GL_MODELVIEW_STACK_DEPTH #x0BA3)
(define GL_NAME_STACK_DEPTH #x0D70)
(define GL_PROJECTION_MATRIX #x0BA7)
(define GL_PROJECTION_STACK_DEPTH #x0BA4)
(define GL_RENDER_MODE #x0C40)
(define GL_RGBA_MODE #x0C31)
(define GL_TEXTURE_MATRIX #x0BA8)
(define GL_TEXTURE_STACK_DEPTH #x0BA5)
(define GL_VIEWPORT #x0BA2)

; /* Evaluators* /
(define GL_AUTO_NORMAL #x0D80)
(define GL_MAP1_COLOR_4 #x0D90)
(define GL_MAP1_INDEX #x0D91)
(define GL_MAP1_NORMAL #x0D92)
(define GL_MAP1_TEXTURE_COORD_1 #x0D93)
(define GL_MAP1_TEXTURE_COORD_2 #x0D94)
(define GL_MAP1_TEXTURE_COORD_3 #x0D95)
(define GL_MAP1_TEXTURE_COORD_4 #x0D96)
(define GL_MAP1_VERTEX_3 #x0D97)
(define GL_MAP1_VERTEX_4 #x0D98)
(define GL_MAP2_COLOR_4 #x0DB0)
(define GL_MAP2_INDEX #x0DB1)
(define GL_MAP2_NORMAL #x0DB2)
(define GL_MAP2_TEXTURE_COORD_1 #x0DB3)
(define GL_MAP2_TEXTURE_COORD_2 #x0DB4)
(define GL_MAP2_TEXTURE_COORD_3 #x0DB5)
(define GL_MAP2_TEXTURE_COORD_4 #x0DB6)
(define GL_MAP2_VERTEX_3 #x0DB7)
(define GL_MAP2_VERTEX_4 #x0DB8)
(define GL_MAP1_GRID_DOMAIN #x0DD0)
(define GL_MAP1_GRID_SEGMENTS #x0DD1)
(define GL_MAP2_GRID_DOMAIN #x0DD2)
(define GL_MAP2_GRID_SEGMENTS #x0DD3)
(define GL_COEFF #x0A00)
(define GL_ORDER #x0A01)
(define GL_DOMAIN #x0A02)

; /* Hints* /
(define GL_PERSPECTIVE_CORRECTION_HINT #x0C50)
(define GL_POINT_SMOOTH_HINT #x0C51)
(define GL_LINE_SMOOTH_HINT #x0C52)
(define GL_POLYGON_SMOOTH_HINT #x0C53)
(define GL_FOG_HINT #x0C54)
(define GL_DONT_CARE #x1100)
(define GL_FASTEST #x1101)
(define GL_NICEST #x1102)

; /* Scissor box* /
(define GL_SCISSOR_BOX #x0C10)
(define GL_SCISSOR_TEST #x0C11)

; /* Pixel Mode / Transfer* /
(define GL_MAP_COLOR #x0D10)
(define GL_MAP_STENCIL #x0D11)
(define GL_INDEX_SHIFT #x0D12)
(define GL_INDEX_OFFSET #x0D13)
(define GL_RED_SCALE #x0D14)
(define GL_RED_BIAS #x0D15)
(define GL_GREEN_SCALE #x0D18)
(define GL_GREEN_BIAS #x0D19)
(define GL_BLUE_SCALE #x0D1A)
(define GL_BLUE_BIAS #x0D1B)
(define GL_ALPHA_SCALE #x0D1C)
(define GL_ALPHA_BIAS #x0D1D)
(define GL_DEPTH_SCALE #x0D1E)
(define GL_DEPTH_BIAS #x0D1F)
(define GL_PIXEL_MAP_S_TO_S_SIZE #x0CB1)
(define GL_PIXEL_MAP_I_TO_I_SIZE #x0CB0)
(define GL_PIXEL_MAP_I_TO_R_SIZE #x0CB2)
(define GL_PIXEL_MAP_I_TO_G_SIZE #x0CB3)
(define GL_PIXEL_MAP_I_TO_B_SIZE #x0CB4)
(define GL_PIXEL_MAP_I_TO_A_SIZE #x0CB5)
(define GL_PIXEL_MAP_R_TO_R_SIZE #x0CB6)
(define GL_PIXEL_MAP_G_TO_G_SIZE #x0CB7)
(define GL_PIXEL_MAP_B_TO_B_SIZE #x0CB8)
(define GL_PIXEL_MAP_A_TO_A_SIZE #x0CB9)
(define GL_PIXEL_MAP_S_TO_S #x0C71)
(define GL_PIXEL_MAP_I_TO_I #x0C70)
(define GL_PIXEL_MAP_I_TO_R #x0C72)
(define GL_PIXEL_MAP_I_TO_G #x0C73)
(define GL_PIXEL_MAP_I_TO_B #x0C74)
(define GL_PIXEL_MAP_I_TO_A #x0C75)
(define GL_PIXEL_MAP_R_TO_R #x0C76)
(define GL_PIXEL_MAP_G_TO_G #x0C77)
(define GL_PIXEL_MAP_B_TO_B #x0C78)
(define GL_PIXEL_MAP_A_TO_A #x0C79)
(define GL_PACK_ALIGNMENT #x0D05)
(define GL_PACK_LSB_FIRST #x0D01)
(define GL_PACK_ROW_LENGTH #x0D02)
(define GL_PACK_SKIP_PIXELS #x0D04)
(define GL_PACK_SKIP_ROWS #x0D03)
(define GL_PACK_SWAP_BYTES #x0D00)
(define GL_UNPACK_ALIGNMENT #x0CF5)
(define GL_UNPACK_LSB_FIRST #x0CF1)
(define GL_UNPACK_ROW_LENGTH #x0CF2)
(define GL_UNPACK_SKIP_PIXELS #x0CF4)
(define GL_UNPACK_SKIP_ROWS #x0CF3)
(define GL_UNPACK_SWAP_BYTES #x0CF0)
(define GL_ZOOM_X #x0D16)
(define GL_ZOOM_Y #x0D17)

; /* Texture mapping* /
(define GL_TEXTURE_ENV #x2300)
(define GL_TEXTURE_ENV_MODE #x2200)
(define GL_TEXTURE_1D #x0DE0)
(define GL_TEXTURE_2D #x0DE1)
(define GL_TEXTURE_WRAP_S #x2802)
(define GL_TEXTURE_WRAP_T #x2803)
(define GL_TEXTURE_MAG_FILTER #x2800)
(define GL_TEXTURE_MIN_FILTER #x2801)
(define GL_TEXTURE_ENV_COLOR #x2201)
(define GL_TEXTURE_GEN_S #x0C60)
(define GL_TEXTURE_GEN_T #x0C61)
(define GL_TEXTURE_GEN_MODE #x2500)
(define GL_TEXTURE_BORDER_COLOR #x1004)
(define GL_TEXTURE_WIDTH #x1000)
(define GL_TEXTURE_HEIGHT #x1001)
(define GL_TEXTURE_BORDER #x1005)
(define GL_TEXTURE_COMPONENTS #x1003)
(define GL_TEXTURE_RED_SIZE #x805C)
(define GL_TEXTURE_GREEN_SIZE #x805D)
(define GL_TEXTURE_BLUE_SIZE #x805E)
(define GL_TEXTURE_ALPHA_SIZE #x805F)
(define GL_TEXTURE_LUMINANCE_SIZE #x8060)
(define GL_TEXTURE_INTENSITY_SIZE #x8061)
(define GL_NEAREST_MIPMAP_NEAREST #x2700)
(define GL_NEAREST_MIPMAP_LINEAR #x2702)
(define GL_LINEAR_MIPMAP_NEAREST #x2701)
(define GL_LINEAR_MIPMAP_LINEAR #x2703)
(define GL_OBJECT_LINEAR #x2401)
(define GL_OBJECT_PLANE #x2501)
(define GL_EYE_LINEAR #x2400)
(define GL_EYE_PLANE #x2502)
(define GL_SPHERE_MAP #x2402)
(define GL_DECAL #x2101)
(define GL_MODULATE #x2100)
(define GL_NEAREST #x2600)
(define GL_REPEAT #x2901)
(define GL_CLAMP #x2900)
(define GL_S #x2000)
(define GL_T #x2001)
(define GL_R #x2002)
(define GL_Q #x2003)
(define GL_TEXTURE_GEN_R #x0C62)
(define GL_TEXTURE_GEN_Q #x0C63)

; /* Utility* /
(define GL_VENDOR #x1F00)
(define GL_RENDERER #x1F01)
(define GL_VERSION #x1F02)
(define GL_EXTENSIONS #x1F03)

; /* Errors* /
(define GL_NO_ERROR #x0)
(define GL_INVALID_ENUM #x0500)
(define GL_INVALID_VALUE #x0501)
(define GL_INVALID_OPERATION #x0502)
(define GL_STACK_OVERFLOW #x0503)
(define GL_STACK_UNDERFLOW #x0504)
(define GL_OUT_OF_MEMORY #x0505)

; /* glPush/PopAttrib bits* /
(define GL_CURRENT_BIT #x00000001)
(define GL_POINT_BIT #x00000002)
(define GL_LINE_BIT #x00000004)
(define GL_POLYGON_BIT #x00000008)
(define GL_POLYGON_STIPPLE_BIT #x00000010)
(define GL_PIXEL_MODE_BIT #x00000020)
(define GL_LIGHTING_BIT #x00000040)
(define GL_FOG_BIT #x00000080)
(define GL_DEPTH_BUFFER_BIT #x00000100)
(define GL_ACCUM_BUFFER_BIT #x00000200)
(define GL_STENCIL_BUFFER_BIT #x00000400)
(define GL_VIEWPORT_BIT #x00000800)
(define GL_TRANSFORM_BIT #x00001000)
(define GL_ENABLE_BIT #x00002000)
(define GL_COLOR_BUFFER_BIT #x00004000)
(define GL_HINT_BIT #x00008000)
(define GL_EVAL_BIT #x00010000)
(define GL_LIST_BIT #x00020000)
(define GL_TEXTURE_BIT #x00040000)
(define GL_SCISSOR_BIT #x00080000)
(define GL_ALL_ATTRIB_BITS #x000FFFFF)


; /* OpenGL 1.1* /
(define GL_PROXY_TEXTURE_1D #x8063)
(define GL_PROXY_TEXTURE_2D #x8064)
(define GL_TEXTURE_PRIORITY #x8066)
(define GL_TEXTURE_RESIDENT #x8067)
(define GL_TEXTURE_BINDING_1D #x8068)
(define GL_TEXTURE_BINDING_2D #x8069)
(define GL_TEXTURE_INTERNAL_FORMAT #x1003)
(define GL_ALPHA4 #x803B)
(define GL_ALPHA8 #x803C)
(define GL_ALPHA12 #x803D)
(define GL_ALPHA16 #x803E)
(define GL_LUMINANCE4 #x803F)
(define GL_LUMINANCE8 #x8040)
(define GL_LUMINANCE12 #x8041)
(define GL_LUMINANCE16 #x8042)
(define GL_LUMINANCE4_ALPHA4 #x8043)
(define GL_LUMINANCE6_ALPHA2 #x8044)
(define GL_LUMINANCE8_ALPHA8 #x8045)
(define GL_LUMINANCE12_ALPHA4 #x8046)
(define GL_LUMINANCE12_ALPHA12 #x8047)
(define GL_LUMINANCE16_ALPHA16 #x8048)
(define GL_INTENSITY #x8049)
(define GL_INTENSITY4 #x804A)
(define GL_INTENSITY8 #x804B)
(define GL_INTENSITY12 #x804C)
(define GL_INTENSITY16 #x804D)
(define GL_R3_G3_B2 #x2A10)
(define GL_RGB4 #x804F)
(define GL_RGB5 #x8050)
(define GL_RGB8 #x8051)
(define GL_RGB10 #x8052)
(define GL_RGB12 #x8053)
(define GL_RGB16 #x8054)
(define GL_RGBA2 #x8055)
(define GL_RGBA4 #x8056)
(define GL_RGB5_A1 #x8057)
(define GL_RGBA8 #x8058)
(define GL_RGB10_A2 #x8059)
(define GL_RGBA12 #x805A)
(define GL_RGBA16 #x805B)
(define GL_CLIENT_PIXEL_STORE_BIT #x00000001)
(define GL_CLIENT_VERTEX_ARRAY_BIT #x00000002)
(define GL_ALL_CLIENT_ATTRIB_BITS #xFFFFFFFF)
(define GL_CLIENT_ALL_ATTRIB_BITS #xFFFFFFFF)
